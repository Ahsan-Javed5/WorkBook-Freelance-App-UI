import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workbook/screens/main_controller.dart';

class LoginController extends GetxController {
  final MainController _mainController = Get.put(MainController());
  var _emailController = TextEditingController();

  get emailController => _emailController;

  set emailController(value) {
    _emailController = value;
  }

  var _passwordController = TextEditingController();

  get passwordController => _passwordController;

  set passwordController(value) {
    _passwordController = value;
  }

  @override
  void onInit() async {
    super.onInit();
  }

  void loginValidate(BuildContext context) {
    if (_emailController.text.isEmpty && _passwordController.text.isEmpty) {
      _mainController.alertDialog('Enter Email and Password to Login', context);
    } else if (_emailController.text.isEmpty) {
      _mainController.alertDialog('You didn\'t enter Email', context);
    } else if (_passwordController.text.isEmpty) {
      _mainController.alertDialog('You didn\'t entered password.', context);
    } else if (!_emailController.text.isEmail) {
      _mainController.alertDialog(
          'You entered wrong email. Please correct it or remove white spaces',
          context);
    } else {}
  }
}
