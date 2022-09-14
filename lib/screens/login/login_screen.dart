import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workbook/constants/color_constants.dart';
import 'package:workbook/constants/font_constants.dart';
import 'package:workbook/screens/login/login_controller.dart';
import 'package:workbook/widgets/screen_top.dart';
import 'package:workbook/widgets/social_sign_ups.dart';
import 'package:get/get.dart';
import '/constants/routes.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          ScreenTop('Sign in'),
          SizedBox(
            height: 11.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.5.w),
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(label: Text('Email ID')),
                  controller: loginController.emailController,
                ),
                SizedBox(
                  height: 3.5.h,
                ),
                TextField(
                  controller: loginController.passwordController,
                  decoration: const InputDecoration(
                    label: Text(
                      'Password',
                    ),
                  ),
                  obscureText: true,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 75.w,
                    top: 1.h,
                  ),
                  child: TextButton(
                    onPressed: () => Get.toNamed(Routes.forgotPasswordScreen),
                    child: Text(
                      'Forget?',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                ElevatedButton(
                    onPressed: () {
                      //loginController.loginValidate(context);
                      Get.toNamed(Routes.homeScreen);
                    },
                    child: const Text(
                      'SignIn',
                      style: TextStyle(color: ColorConstants.primaryColor),
                    )),
                Padding(
                  padding: EdgeInsets.only(
                    top: 2.h,
                    bottom: 4.h,
                  ),
                  child: Text(
                    'OR',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                const SocialSignUps(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'I am a new user,',
                      style: TextStyle(
                        fontFamily: FontConstants.comfortaaBold,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.toNamed(Routes.signupScreen),
                      child: const Text(' Sign Up'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
