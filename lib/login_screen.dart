import 'package:chillout_cafe/home_screen.dart';
import 'package:chillout_cafe/utils/my_bottom_nav.dart';
import 'package:chillout_cafe/utils/my_button_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'utils/app_colors.dart';
import 'utils/my_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formField = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var obscureText = true;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formField,
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome\nBack!',
                    style: TextStyle(
                      color: colorPrimary,
                      fontSize: 36.sp,
                      fontFamily: 'Josefin Sans',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  TextFormField(
                    controller: emailController,
                    validator: (value) {
                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);
                      if (value.isEmpty) {
                        return "Enter Email";
                      } else if (!emailValid) {
                        return "Enter valid Email";
                      }
                      return null;
                    },
                    style: const TextStyle(color: colorPrimary),
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                          color: colorPrimary,
                          fontWeight: FontWeight.w300,
                          fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password";
                      } else if (passwordController.text.length < 6) {
                        return "Password length should be more than 6 characters";
                      }
                      return null;
                    },
                    style: const TextStyle(color: colorPrimary),
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: colorPrimary,
                          fontWeight: FontWeight.w300,
                          fontSize: 16.sp),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        child: obscureText
                            ? const Icon(Icons.visibility_off,
                                color: colorPrimary, size: 20)
                            : const Icon(Icons.visibility_outlined,
                                color: colorPrimary, size: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  MyButton(
                    buttonText: 'Login',
                    onPressed: () async {
                      if (_formField.currentState!.validate()) {
                        emailController.clear();
                        passwordController.clear();
                        Navigator.pushAndRemoveUntil<void>(
                          context,
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const MyBottomNav()),
                          ModalRoute.withName('/'),
                        );
                      }
                    },
                  ),
                  SizedBox(height: 16.h),
                  MyButtonTwo(
                      buttonText: 'Create an account', onPressed: () {}),
                  SizedBox(height: 16.h),
                  Center(
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            minimumSize: const Size(50, 20),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        child: Text(
                          'Forgot your password?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: colorPrimary,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
