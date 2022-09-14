import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workbook/constants/color_constants.dart';
import 'package:workbook/screens/my_tasks/my_task_controller.dart';
import 'package:workbook/widgets/task_screen_individual_item.dart';
import 'package:get/get.dart';

class MyTasksView extends StatelessWidget {
  //const MyTasksView({Key? key}) : super(key: key);
  final MyTaskController _myTaskController = Get.put(MyTaskController());

  MyTasksView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 3.4.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 2.5.h,
          ),
          Obx(
            () => Text(
              'Total Tasks: ${_myTaskController.tasksList.length}',
              style: const TextStyle(
                color: ColorConstants.accentColor,
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Obx(
            () => SizedBox(
              height: 59.4.h,
              child: ListView.builder(
                itemCount: _myTaskController.tasksList.length,
                itemBuilder: (context, index) {
                  return TaskScreenIndividualItem(
                    title: _myTaskController.tasksList[index].title,
                    status: _myTaskController.tasksList[index].status,
                    offers: _myTaskController.tasksList[index].offers,
                    color: _myTaskController.tasksList[index].color,
                    comments: _myTaskController.tasksList[index].comments,
                    price: _myTaskController.tasksList[index].price,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
