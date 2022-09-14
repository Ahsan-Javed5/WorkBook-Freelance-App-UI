import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';
import 'package:workbook/screens/otp_verification/otp_controller.dart';
import 'package:workbook/screens/referral_code/referral_controller.dart';
import '../../constants/color_constants.dart';
import '../../widgets/my_radio_list_tile.dart';
import '../../widgets/screen_top.dart';

class ReferralScreen extends StatelessWidget {
  ReferralScreen({Key? key}) : super(key: key);
  final OtpController otpController = Get.put(OtpController());
  final ReferralController referralController = Get.put(ReferralController());
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
                    'Referral Code!',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'If anyone refers you then please enter the referral code.',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                const TextField(
                  decoration: InputDecoration(
                    label: Text(
                      'Referral Code',
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 80.w,
                    child: Text(
                      'If not then tell how you come to know about this application.',
                      textAlign: TextAlign.center,
                      strutStyle: StrutStyle(
                        height: 0.2.h,
                      ),
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Obx(
                  () => Column(
                    children: [
                      MyRadioListTile<int>(
                          value: 1,
                          groupValue: referralController.val.value,
                          title: Text(
                            'Through any social media account.',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (value) =>
                              referralController.val.value = value!),
                      MyRadioListTile<int>(
                          value: 2,
                          groupValue: referralController.val.value,
                          title: Text(
                            'Listening from any friend.',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (value) =>
                              referralController.val.value = value!),
                      MyRadioListTile<int>(
                          value: 3,
                          groupValue: referralController.val.value,
                          title: Text(
                            'Through our website.',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (value) =>
                              referralController.val.value = value!),
                      MyRadioListTile<int>(
                          value: 4,
                          groupValue: referralController.val.value,
                          title: Text(
                            'Other.',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (value) =>
                              referralController.val.value = value!),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Get Started',
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
