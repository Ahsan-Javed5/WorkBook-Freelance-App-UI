import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';
import 'package:workbook/constants/app_images.dart';
import 'package:workbook/constants/font_constants.dart';
import 'package:workbook/screens/otp_verification/otp_controller.dart';
import '../../constants/color_constants.dart';
import '../../constants/routes.dart';
import '../../widgets/screen_top.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({Key? key}) : super(key: key);
  final OtpController otpController = Get.put(OtpController());
  StreamController<ErrorAnimationType> otpErrorController =
      StreamController<ErrorAnimationType>();
  TextEditingController otpEditingController = TextEditingController();

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
                  //width: 40.w,
                  child: Text(
                    'OTP Verify!',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'Please enter verification code, we just send to your Email.',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                const Text('Verification Code'),
                SizedBox(
                  height: 1.h,
                ),
                PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  autoDismissKeyboard: true,
                  textStyle: TextStyle(
                    color: ColorConstants.lightBlack,
                    fontSize: 18.sp,
                  ),
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    fieldOuterPadding: EdgeInsets.symmetric(
                      horizontal: 1.w,
                    ),
                    //disabledColor: ColorConstants.grayLevel6,
                    inactiveColor: ColorConstants.grayLevel6,
                    inactiveFillColor: ColorConstants.grayLevel6,
                    activeColor: ColorConstants.grayLevel6,
                    activeFillColor: ColorConstants.grayLevel6,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 6.h,
                    fieldWidth: 6.h,
                    selectedColor: ColorConstants.primaryColor,
                    selectedFillColor: ColorConstants.darkGray,
                  ),
                  animationDuration: const Duration(milliseconds: 200),
                  //backgroundColor: Colors.blue.shade50,
                  enableActiveFill: true,
                  errorAnimationController: otpErrorController,
                  controller: otpEditingController,
                  onCompleted: (v) {},
                  onChanged: (value) {},
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                  appContext: context,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                            child: SvgPicture.asset(
                              AppImages.chatIcon,
                              height: 2.3.h,
                            ),
                          ),
                          Text(
                            'Resend',
                            style: TextStyle(
                              fontFamily: FontConstants.comfortaaSemiBold,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Clear',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: FontConstants.comfortaaBold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'OTP Expires in: ',
                    ),
                    Text(
                      '${otpController.counter.value}s',
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: ColorConstants.accentColor,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.referralScreen),
                    child: const Text(
                      'Verify',
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
