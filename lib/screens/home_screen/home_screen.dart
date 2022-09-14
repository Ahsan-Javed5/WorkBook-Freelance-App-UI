import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:workbook/constants/color_constants.dart';
import 'package:workbook/constants/font_constants.dart';
import 'package:workbook/screens/home_screen/home_screen_controller.dart';
import 'package:get/get.dart';
import 'package:workbook/screens/more_options/more_options_screen.dart';
import 'package:workbook/screens/my_tasks/my_task_screen.dart';
import 'package:workbook/screens/post_a_task/post_a_task_screen.dart';
import 'package:workbook/widgets/bottom_navbar.dart';
import 'package:workbook/widgets/home_screen_view.dart';
import 'package:workbook/widgets/my_appbar.dart';
import '/constants/app_images.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final HomeScreenController _homeScreenController =
      Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: _stackedWidgets(),
    );
  }

  Widget _stackedWidgets() {
    return Obx(
      () => IndexedStack(
        index: _homeScreenController.counter.value,
        children: [
          const HomeScreenView(),
          MyTaskScreen(),
          PostATaskScreen(),
          SizedBox(),
          MoreOptionsScreen(),
        ],
      ),
    );
  }
}
