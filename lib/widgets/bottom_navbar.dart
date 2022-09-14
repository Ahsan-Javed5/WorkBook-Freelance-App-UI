import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '/screens/home_screen/home_screen_controller.dart';
import 'package:get/get.dart';
import '/constants/app_images.dart';
import '/constants/color_constants.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({Key? key}) : super(key: key);

  final HomeScreenController _homeScreenController =
      Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      padding: EdgeInsets.symmetric(
        horizontal: 4.5.w,
      ),
      decoration: const BoxDecoration(
        color: ColorConstants.whiteColor,
      ),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                _homeScreenController.isSelectedTask.value = false;
                _homeScreenController.isSelectedChat.value = false;
                _homeScreenController.isSelectedHome.value = true;
                _homeScreenController.isSelectedDots.value = false;
                _homeScreenController.counter.value = 0;
              },
              child: Column(
                children: [
                  SizedBox(
                    height: 1.8.h,
                  ),
                  SvgPicture.asset(
                    AppImages.homeIcon,
                    color: _homeScreenController.isSelectedHome.value
                        ? ColorConstants.primaryColor
                        : ColorConstants.gray,
                    height: 3.5.h,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SvgPicture.asset(
                    AppImages.lineOrange,
                    width: 4.w,
                    height: 0.3.h,
                    color: _homeScreenController.isSelectedHome.value
                        ? ColorConstants.primaryColor
                        : ColorConstants.whiteColor,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                _homeScreenController.isSelectedTask.value = true;
                _homeScreenController.isSelectedChat.value = false;
                _homeScreenController.isSelectedHome.value = false;
                _homeScreenController.isSelectedDots.value = false;
                _homeScreenController.counter.value = 1;
              },
              child: Column(
                children: [
                  SizedBox(
                    height: 1.8.h,
                  ),
                  SvgPicture.asset(
                    AppImages.taskIcon,
                    color: _homeScreenController.isSelectedTask.value
                        ? ColorConstants.primaryColor
                        : ColorConstants.gray,
                    height: 3.5.h,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SvgPicture.asset(
                    AppImages.lineOrange,
                    width: 4.w,
                    height: 0.3.h,
                    color: _homeScreenController.isSelectedTask.value
                        ? ColorConstants.primaryColor
                        : ColorConstants.whiteColor,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                _homeScreenController.counter.value = 2;
              },
              child: SvgPicture.asset(
                AppImages.encircledPlus,
                height: 6.5.h,
              ),
            ),
            GestureDetector(
              onTap: () {
                _homeScreenController.isSelectedTask.value = false;
                _homeScreenController.isSelectedChat.value = true;
                _homeScreenController.isSelectedHome.value = false;
                _homeScreenController.isSelectedDots.value = false;
                _homeScreenController.counter.value = 3;
              },
              child: Column(
                children: [
                  SizedBox(
                    height: 1.8.h,
                  ),
                  SvgPicture.asset(
                    AppImages.chatIconNavBar,
                    color: _homeScreenController.isSelectedChat.value
                        ? ColorConstants.primaryColor
                        : ColorConstants.gray,
                    height: 3.5.h,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SvgPicture.asset(
                    AppImages.lineOrange,
                    width: 4.w,
                    height: 0.3.h,
                    color: _homeScreenController.isSelectedChat.value
                        ? ColorConstants.primaryColor
                        : ColorConstants.whiteColor,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                _homeScreenController.isSelectedTask.value = false;
                _homeScreenController.isSelectedChat.value = false;
                _homeScreenController.isSelectedHome.value = false;
                _homeScreenController.isSelectedDots.value = true;
                _homeScreenController.counter.value = 4;
              },
              child: Column(
                children: [
                  SizedBox(
                    height: 1.8.h,
                  ),
                  SvgPicture.asset(
                    AppImages.threeDots,
                    color: _homeScreenController.isSelectedDots.value
                        ? ColorConstants.primaryColor
                        : ColorConstants.gray,
                    height: 3.5.h,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SvgPicture.asset(
                    AppImages.lineOrange,
                    width: 4.w,
                    height: 0.3.h,
                    color: _homeScreenController.isSelectedDots.value
                        ? ColorConstants.primaryColor
                        : ColorConstants.whiteColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
