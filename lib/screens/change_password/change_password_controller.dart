import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _reNewPasswordController =
      TextEditingController();

  RxBool isEqual = false.obs;

  TextEditingController get reNewPasswordController => _reNewPasswordController;

  TextEditingController get newPasswordController => _newPasswordController;

  TextEditingController get oldPasswordController => _oldPasswordController;

  passwordValidate() {
    if (newPasswordController != reNewPasswordController) {
      isEqual.value = true;
      newPasswordController.clear();
      reNewPasswordController.clear();
    }
  }
}
