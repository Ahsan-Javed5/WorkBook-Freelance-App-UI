import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '/constants/color_constants.dart';

class MainController extends GetxController{

  Future<bool?> alertDialog(String detail, BuildContext context) {
    return Alert(buttons: [
      DialogButton(
        color: ColorConstants.primaryColor,
        child: const Text('Cancel'),
        onPressed: () => Get.back(),
      ),
    ], context: context, desc: detail)
        .show();
  }

}