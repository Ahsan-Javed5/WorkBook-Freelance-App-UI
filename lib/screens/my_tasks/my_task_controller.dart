import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:workbook/data/dummy_data.dart';
import 'package:workbook/models/task_item.dart';
import 'package:workbook/widgets/task_screen_individual_item.dart';
import '/constants/app_images.dart';
import '/constants/color_constants.dart';
import '/widgets/my_tasks_view.dart';

class MyTaskController extends GetxController {
  final RxBool _isMyTasks = true.obs;
  final RxBool _isMyJobs = false.obs;
  final RxBool _isTextButtonAll = true.obs;
  final RxBool _isTextButtonCompleted = false.obs;
  final RxBool _isTextButtonCancelled = false.obs;
  final RxBool _isTextButtonInProgress = false.obs;
  final RxList _tasksList = [].obs;

  @override
  void onInit() {
    _tasksList.value = myTasks;
    super.onInit();
  }

  RxList<dynamic> get tasksList => _tasksList;

  RxBool get isTextButtonCancelled => _isTextButtonCancelled;

  RxBool get isTextButtonAll => _isTextButtonAll;

  RxBool get isMyTasks => _isMyTasks;

  RxBool get isMyJobs => _isMyJobs;

  RxBool get isTextButtonCompleted => _isTextButtonCompleted;

  RxBool get isTextButtonInProgress => _isTextButtonInProgress;

  textButton(String buttonName, bool isCheck) {
    return Column(
      children: [
        TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.only(
            left: 3.5.w,
            right: 3.5.w,
            bottom: 0.5.h,
          )),
          onPressed: null,
          child: Text(
            buttonName,
            style: TextStyle(
              fontSize: 12.5.sp,
              color: isCheck
                  ? ColorConstants.primaryColor
                  : ColorConstants.grayLight,
            ),
          ),
        ),
        isCheck
            ? SvgPicture.asset(
                AppImages.lineOrange,
              )
            : const SizedBox(),
      ],
    );
  }

  updateList(List list) {
    tasksList.value = list;
  }
}
