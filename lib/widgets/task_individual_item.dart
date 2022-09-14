import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '/constants/app_images.dart';
import '/constants/color_constants.dart';
import '/constants/font_constants.dart';

class TaskIndividualItem extends StatelessWidget {
  String title;
  String country;
  String status;
  int offers;
  int comments;
  int price;

  TaskIndividualItem({
    Key? key,
    required this.title,
    required this.country,
    required this.status,
    required this.offers,
    required this.comments,
    required this.price,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Card(
          margin: EdgeInsets.only(
            left: 4.w,
            right: 4.w,
            bottom: 3.5.w,
          ),
          elevation: 2,
          child: Container(
            width: 95.w,
            //height: 12.h,
            padding: EdgeInsets.fromLTRB(4.w, 1.5.h, 4.w, 0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70.w,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: FontConstants.comfortaaSemiBold,
                      color: ColorConstants.accentColor,
                      fontSize: 12.sp,
                      height: 1.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      AppImages.locationOrangeIcon,
                      height: 2.h,
                      width: 2.h,
                    ),
                    Text(
                      ' $country ($status)',
                      style: TextStyle(
                        color: ColorConstants.accentColor,
                        fontSize: 9.sp,
                        fontFamily: FontConstants.comfortaaBold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppImages.offersOrangeIcon,
                          height: 2.h,
                          width: 2.h,
                        ),
                        Text(
                          ' $offers offers',
                          style: TextStyle(
                            color: ColorConstants.accentColor,
                            fontSize: 9.sp,
                            fontFamily: FontConstants.comfortaaBold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppImages.commentsOrangeIcon,
                          height: 2.h,
                          width: 2.h,
                        ),
                        Text(
                          ' $comments Comments',
                          style: TextStyle(
                            color: ColorConstants.accentColor,
                            fontSize: 9.sp,
                            fontFamily: FontConstants.comfortaaBold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 25.w,
                      height: 4.7.h,
                      margin: EdgeInsets.only(
                        bottom: 1.5.h,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: ColorConstants.primaryColor,
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.w,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          '\$ $price',
                          style: TextStyle(
                            fontSize: 11.5.sp,
                            color: ColorConstants.whiteColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
