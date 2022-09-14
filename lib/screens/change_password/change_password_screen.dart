import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:workbook/constants/app_images.dart';
import 'package:workbook/constants/color_constants.dart';
import 'package:workbook/screens/change_password/change_password_controller.dart';
import 'package:workbook/widgets/my_appbar.dart';
import 'package:get/get.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key}) : super(key: key);
  final ChangePasswordController _changePasswordController =
      Get.put(ChangePasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.grayLevel6,
      appBar: MyAppBar(true, 'Change Password', false, []),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 6.h,
              ),
              TextFormField(
                controller: _changePasswordController.oldPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Enter Password',
                  labelText: 'Old Password',
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                controller: _changePasswordController.newPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'New Password',
                  labelText: 'New Password',
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                controller: _changePasswordController.reNewPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Re-enter New Password',
                  labelText: 'Confirm New Password',
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Obx(
                () => _changePasswordController.isEqual.value
                    ? Row(
                        children: [
                          SvgPicture.asset(
                            AppImages.infoIcon,
                            color: ColorConstants.primaryColor,
                          ),
                          Text(
                            ' New Password Didn\'t Match.',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      )
                    : SizedBox(),
              ),
              Obx(() => SizedBox(
                    height: _changePasswordController.isEqual.value ? 5.h : 2.h,
                  )),
              ElevatedButton(
                  onPressed: _changePasswordController.passwordValidate,
                  child: const Text(
                    'Change',
                    style: TextStyle(
                      color: ColorConstants.primaryColor,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
