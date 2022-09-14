import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:workbook/constants/app_images.dart';
import 'package:workbook/constants/color_constants.dart';
import 'package:workbook/constants/font_constants.dart';
import 'package:workbook/widgets/my_appbar.dart';

class CustomerSupportSubScreen extends StatelessWidget {
  const CustomerSupportSubScreen(
      {Key? key,
      required this.title,
      required this.description,
      required this.status,
      required this.color})
      : super(key: key);
  final String title;
  final String description;
  final String status;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(true, 'Customer Support', false, []),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 3.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 1.h,
                horizontal: 2.w,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(
                  0.5.h,
                ),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppImages.infoIcon,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    status,
                    style: TextStyle(
                      color: ColorConstants.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              title,
              strutStyle: StrutStyle(
                height: 0.2.h,
              ),
              style: TextStyle(
                color: ColorConstants.blackColor,
                fontFamily: FontConstants.comfortaaBold,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              description,
              strutStyle: StrutStyle(
                height: 0.2.h,
              ),
              style: TextStyle(
                color: ColorConstants.blackColor,
                fontFamily: FontConstants.comfortaaMedium,
                fontSize: 12.sp,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              'Attachments:',
              strutStyle: StrutStyle(
                height: 0.2.h,
              ),
              style: TextStyle(
                color: ColorConstants.blackColor,
                fontFamily: FontConstants.comfortaaBold,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                Container(
                  height: 7.h,
                  width: 7.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorConstants.primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(
                      0.5.h,
                    ),
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Container(
                  height: 7.h,
                  width: 7.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorConstants.primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(
                      0.5.h,
                    ),
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Container(
                  height: 7.h,
                  width: 7.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorConstants.primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(
                      0.5.h,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
