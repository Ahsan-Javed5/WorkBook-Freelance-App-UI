import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/color_constants.dart';
import '../../widgets/screen_top.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          ScreenTop('back'),
          Container(
            margin: EdgeInsets.all(4.5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.w,
                  child: Text(
                    'Forgot Password?',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                SizedBox(
                  width: 80.w,
                  child: Text(
                    'Don\'t worry! it happens. Please enter the email associate with your account.',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                const TextField(
                  decoration: InputDecoration(label: Text('Email ID')),
                ),
                SizedBox(
                  height: 7.h,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: ColorConstants.primaryColor),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
