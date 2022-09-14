import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:workbook/data/dummy_data.dart';
import 'package:workbook/widgets/task_individual_item.dart';
import '../constants/app_images.dart';
import '../constants/color_constants.dart';
import '../constants/font_constants.dart';
import 'my_appbar.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.grayLevel6,
      appBar: MyAppBar(false, 'Home', false, const [
        AppImages.searchIcon,
        AppImages.locationIcon,
        AppImages.filterIcon
      ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 2.h,
              left: 4.w,
              bottom: 2.h,
            ),
            child: const Text(
              'Total Tasks : 5000',
              style: TextStyle(
                fontFamily: FontConstants.comfortaaRegular,
                color: ColorConstants.accentColor,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasksList.length,
              itemBuilder: (context, index) {
                return TaskIndividualItem(
                  title: tasksList[index].title,
                  country: tasksList[index].country.toString(),
                  status: tasksList[index].status,
                  offers: tasksList[index].offers,
                  comments: tasksList[index].offers,
                  price: tasksList[index].price,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
