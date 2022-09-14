import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:workbook/constants/color_constants.dart';
import 'package:workbook/constants/font_constants.dart';
import '/constants/app_images.dart';
import '/widgets/my_appbar.dart';
import '/widgets/my_drop_down_btn.dart';
import '/screens/post_a_task/post_a_task_controller.dart';
import 'package:get/get.dart';

class PostATaskScreen extends StatelessWidget {
  PostATaskScreen({Key? key}) : super(key: key);
  final PostATaskController _postATaskController =
      Get.put(PostATaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(false, 'Post a Task', false, const []),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 4.h,
              ),
              const MyDropDownBtn(
                hintText: 'Category',
              ),
              const MyDropDownBtn(
                hintText: 'Sub Category',
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Title',
                  labelText: 'Task Title',
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _getDateButton('Start'),
                  _getDateButton('End'),
                ],
              ),
              SizedBox(
                height: 2.5.h,
              ),
              InputDecorator(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 2.h,
                    horizontal: 3.w,
                  ),
                  labelText: 'Time',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                ),
                child: Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _postATaskController.isMorning.value = true;
                            _postATaskController.isEvening.value = false;
                            _postATaskController.isNight.value = false;
                          },
                          child: Container(
                            child: Text(
                              'Morning',
                              style: TextStyle(
                                color: _postATaskController.isMorning.value
                                    ? ColorConstants.whiteColor
                                    : ColorConstants.lightGray,
                                fontFamily: FontConstants.comfortaaBold,
                              ),
                            ),
                            height: 5.5.h,
                            width: 26.w,
                            alignment: Alignment.center,
                            // padding: EdgeInsets.symmetric(
                            //   horizontal: 3.w,
                            //   vertical: 1.5.h,
                            // ),
                            decoration: BoxDecoration(
                              color: _postATaskController.isMorning.value
                                  ? ColorConstants.primaryColor
                                  : ColorConstants.whiteColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  0.5.h,
                                ),
                              ),
                              border: Border.all(
                                color: _postATaskController.isMorning.value
                                    ? ColorConstants.transparent
                                    : ColorConstants.lightGray,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _postATaskController.isMorning.value = false;
                            _postATaskController.isEvening.value = true;
                            _postATaskController.isNight.value = false;
                          },
                          child: Container(
                            child: Text(
                              'Evening',
                              style: TextStyle(
                                color: _postATaskController.isEvening.value
                                    ? ColorConstants.whiteColor
                                    : ColorConstants.lightGray,
                                fontFamily: FontConstants.comfortaaBold,
                              ),
                            ),
                            height: 5.5.h,
                            width: 26.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: _postATaskController.isEvening.value
                                  ? ColorConstants.primaryColor
                                  : ColorConstants.whiteColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  0.5.h,
                                ),
                              ),
                              border: Border.all(
                                color: _postATaskController.isEvening.value
                                    ? ColorConstants.transparent
                                    : ColorConstants.lightGray,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _postATaskController.isMorning.value = false;
                            _postATaskController.isEvening.value = false;
                            _postATaskController.isNight.value = true;
                          },
                          child: Container(
                            child: Text(
                              'Night',
                              style: TextStyle(
                                color: _postATaskController.isNight.value
                                    ? ColorConstants.whiteColor
                                    : ColorConstants.lightGray,
                                fontFamily: FontConstants.comfortaaBold,
                              ),
                            ),
                            height: 5.5.h,
                            width: 26.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: _postATaskController.isNight.value
                                  ? ColorConstants.primaryColor
                                  : ColorConstants.whiteColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  0.5.h,
                                ),
                              ),
                              border: Border.all(
                                color: _postATaskController.isNight.value
                                    ? ColorConstants.transparent
                                    : ColorConstants.lightGray,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              InputDecorator(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 2.h,
                    horizontal: 7.w,
                  ),
                  labelText: 'Location',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                ),
                child: Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _postATaskController.isRemote.value = true;
                            _postATaskController.isOnsite.value = false;
                          },
                          child: Container(
                            child: Text(
                              'Remote',
                              style: TextStyle(
                                color: _postATaskController.isRemote.value
                                    ? ColorConstants.whiteColor
                                    : ColorConstants.lightGray,
                                fontFamily: FontConstants.comfortaaBold,
                              ),
                            ),
                            height: 5.5.h,
                            width: 35.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: _postATaskController.isRemote.value
                                  ? ColorConstants.primaryColor
                                  : ColorConstants.whiteColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  0.5.h,
                                ),
                              ),
                              border: Border.all(
                                color: _postATaskController.isRemote.value
                                    ? ColorConstants.transparent
                                    : ColorConstants.lightGray,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _postATaskController.isRemote.value = false;
                            _postATaskController.isOnsite.value = true;
                          },
                          child: Container(
                            child: Text(
                              'Onsite',
                              style: TextStyle(
                                color: _postATaskController.isOnsite.value
                                    ? ColorConstants.whiteColor
                                    : ColorConstants.lightGray,
                                fontFamily: FontConstants.comfortaaBold,
                              ),
                            ),
                            height: 5.5.h,
                            width: 35.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: _postATaskController.isOnsite.value
                                  ? ColorConstants.primaryColor
                                  : ColorConstants.whiteColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  0.5.h,
                                ),
                              ),
                              border: Border.all(
                                color: _postATaskController.isOnsite.value
                                    ? ColorConstants.transparent
                                    : ColorConstants.lightGray,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              Obx(() => _postATaskController.isOnsite.value
                  ? TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter Address',
                        labelText: 'Address',
                      ),
                    )
                  : SizedBox()),
              Obx(() => SizedBox(
                    height: _postATaskController.isOnsite.value ? 2.5.h : 0,
                  )),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Budget',
                  labelText: 'Task Budget',
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              TextFormField(
                maxLines: 7,
                decoration: const InputDecoration(
                  hintText: 'Type Here...',
                  labelText: 'Task Detail',
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              InputDecorator(
                decoration: InputDecoration(
                  // contentPadding: EdgeInsets.only(
                  //   top: 3.h,
                  //   left: 5.w,
                  //   right: 70.w,
                  // ),
                  labelText: 'Photos if any',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                ),
                child: Container(
                  color: ColorConstants.grayLevel6,
                  height: 6.h,
                  //width: 10.h,
                  child: SvgPicture.asset(
                    AppImages.plusIcon,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              SizedBox(
                height: 4.5.h,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Post',
                    style: TextStyle(
                      color: ColorConstants.primaryColor,
                    ),
                  )),
              SizedBox(
                height: 1.5.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _getDateButton(String dateTitle) {
    return SizedBox(
      width: 40.w,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Date',
          labelText: '$dateTitle Date',
          suffixIcon: SvgPicture.asset(
            AppImages.calendarIcon,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
