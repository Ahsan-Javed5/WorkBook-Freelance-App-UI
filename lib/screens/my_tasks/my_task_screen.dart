import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workbook/widgets/my_tasks_view.dart';
import '/data/dummy_data.dart';
import '/constants/app_images.dart';
import '/constants/font_constants.dart';
import '/screens/my_tasks/my_task_controller.dart';
import '/widgets/my_appbar.dart';
import 'package:get/get.dart';
import '/constants/color_constants.dart';

class MyTaskScreen extends StatelessWidget {
  MyTaskScreen({Key? key}) : super(key: key);

  final MyTaskController _myTaskController = Get.put(MyTaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.grayLevel6,
      appBar: MyAppBar(false, 'My Tasks', false, const [AppImages.searchIcon]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 1.h,
              bottom: 3.h,
            ),
            child: Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _myTaskController.updateList(myTasks);
                        _myTaskController.isMyTasks.value = true;
                        _myTaskController.isMyJobs.value = false;
                        _myTaskController.isTextButtonAll.value = true;
                        _myTaskController.isTextButtonCompleted.value = false;
                        _myTaskController.isTextButtonCancelled.value = false;
                        _myTaskController.isTextButtonInProgress.value = false;
                      },
                      child: Chip(
                        backgroundColor: _myTaskController.isMyTasks.value
                            ? ColorConstants.primaryColor
                            : ColorConstants.grayWhite,
                        padding: EdgeInsets.symmetric(
                          vertical: 1.6.h,
                          horizontal: 6.w,
                        ),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        label: Text(
                          "My Tasks",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: _myTaskController.isMyTasks.value
                                ? ColorConstants.whiteColor
                                : ColorConstants.blackColor,
                            fontFamily: FontConstants.comfortaaBold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _myTaskController.updateList(myJobs);
                        _myTaskController.isMyTasks.value = false;
                        _myTaskController.isMyJobs.value = true;
                        _myTaskController.isTextButtonAll.value = true;
                        _myTaskController.isTextButtonCompleted.value = false;
                        _myTaskController.isTextButtonCancelled.value = false;
                        _myTaskController.isTextButtonInProgress.value = false;
                      },
                      child: Chip(
                        backgroundColor: _myTaskController.isMyJobs.value
                            ? ColorConstants.primaryColor
                            : ColorConstants.grayWhite,
                        padding: EdgeInsets.symmetric(
                          vertical: 1.6.h,
                          horizontal: 6.w,
                        ),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        label: Text(
                          "My Jobs",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: _myTaskController.isMyJobs.value
                                ? ColorConstants.whiteColor
                                : ColorConstants.blackColor,
                            fontFamily: FontConstants.comfortaaBold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 4.h,
            child: Obx(
              () => ListView(
                padding: EdgeInsets.only(
                  left: 5.w,
                ),
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      _myTaskController.isTextButtonAll.value = true;
                      _myTaskController.isTextButtonCompleted.value = false;
                      _myTaskController.isTextButtonCancelled.value = false;
                      _myTaskController.isTextButtonInProgress.value = false;
                      _myTaskController.isMyTasks.value
                          ? _myTaskController.updateList(myTasks)
                          : _myTaskController.updateList(myJobs);
                    },
                    child: _myTaskController.textButton(
                        'All', _myTaskController.isTextButtonAll.value),
                  ),
                  GestureDetector(
                    onTap: () {
                      _myTaskController.updateList(
                        (_myTaskController.isMyTasks.value ? myTasks : myJobs)
                            .where((element) => element.status == 'Completed')
                            .toList(),
                      );
                      _myTaskController.isTextButtonAll.value = false;
                      _myTaskController.isTextButtonCompleted.value = true;
                      _myTaskController.isTextButtonCancelled.value = false;
                      _myTaskController.isTextButtonInProgress.value = false;
                    },
                    child: _myTaskController.textButton('Completed',
                        _myTaskController.isTextButtonCompleted.value),
                  ),
                  GestureDetector(
                    onTap: () {
                      _myTaskController.updateList(
                        (_myTaskController.isMyTasks.value ? myTasks : myJobs)
                            .where((element) =>
                                element.status ==
                                (_myTaskController.isMyTasks.value
                                    ? 'Cancelled'
                                    : 'Deleted'))
                            .toList(),
                      );
                      _myTaskController.isTextButtonAll.value = false;
                      _myTaskController.isTextButtonCompleted.value = false;
                      _myTaskController.isTextButtonCancelled.value = true;
                      _myTaskController.isTextButtonInProgress.value = false;
                    },
                    child: _myTaskController.textButton(
                        _myTaskController.isMyTasks.value
                            ? 'Cancelled'
                            : 'Deleted',
                        _myTaskController.isTextButtonCancelled.value),
                  ),
                  GestureDetector(
                    onTap: () {
                      _myTaskController.updateList(
                        (_myTaskController.isMyTasks.value ? myTasks : myJobs)
                            .where((element) => element.status == 'In Progress')
                            .toList(),
                      );
                      _myTaskController.isTextButtonAll.value = false;
                      _myTaskController.isTextButtonCompleted.value = false;
                      _myTaskController.isTextButtonCancelled.value = false;
                      _myTaskController.isTextButtonInProgress.value = true;
                    },
                    child: _myTaskController.textButton('In Progress',
                        _myTaskController.isTextButtonInProgress.value),
                  ),
                ],
              ),
            ),
          ),
          MyTasksView(),
        ],
      ),
    );
  }
}
