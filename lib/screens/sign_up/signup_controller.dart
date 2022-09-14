import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:workbook/screens/main_controller.dart';

class SignUpController extends GetxController {
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();
  var _userNameController = TextEditingController();
  final MainController _mainController = Get.put(MainController());

  get emailController => _emailController;

  set emailController(value) {
    _emailController = value;
  }

  get passwordController => _passwordController;

  set passwordController(value) {
    _passwordController = value;
  }

  get userNameController => _userNameController;

  set userNameController(value) {
    _userNameController = value;
  }

  @override
  void onInit() async {
    super.onInit();
  }

  void signUpValidate(BuildContext context) {
    if (_emailController.text.isEmpty &&
        _passwordController.text.isEmpty &&
        _userNameController.text.isEmpty) {
      _mainController.alertDialog('Please enter all fields', context);
    } else if (_userNameController.text.isEmpty) {
      _mainController.alertDialog('You didn\'t entered Username.', context);
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
