import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workbook/screens/sign_up/signup_controller.dart';
import '/constants/color_constants.dart';
import '/constants/font_constants.dart';
import '/constants/routes.dart';
import '/widgets/screen_top.dart';
import '/widgets/social_sign_ups.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final SignUpController _signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          ScreenTop('Sign Up'),
          SizedBox(
            height: 5.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.5.w),
            child: Column(
              children: [
                TextField(
                  controller: _signUpController.userNameController,
                  decoration: const InputDecoration(label: Text('Your Name')),
                ),
                SizedBox(
                  height: 3.h,
                ),
                TextField(
                  controller: _signUpController.emailController,
                  decoration: const InputDecoration(label: Text('Email ID')),
                ),
                SizedBox(
                  height: 3.h,
                ),
                TextField(
                  controller: _signUpController.passwordController,
                  decoration: const InputDecoration(
                    label: Text('Password'),
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 4.h,
                ),
                ElevatedButton(
                    onPressed: () {
                      _signUpController.signUpValidate(context);
                      //Get.toNamed(Routes.otpScreen);
                    },
                    child: const Text(
                      'Create',
                      style: TextStyle(color: ColorConstants.primaryColor),
                    )),
                Padding(
                  padding: EdgeInsets.only(
                    top: 2.h,
                    bottom: 3.h,
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
                      'I am already member,',
                      style: TextStyle(
                        fontFamily: FontConstants.comfortaaBold,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.toNamed(Routes.loginScreen),
                      child: const Text(' Sign In'),
                    ),
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
