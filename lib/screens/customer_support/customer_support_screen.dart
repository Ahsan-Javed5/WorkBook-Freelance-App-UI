import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:workbook/constants/app_images.dart';
import 'package:workbook/constants/color_constants.dart';
import 'package:workbook/constants/routes.dart';
import 'package:workbook/data/dummy_data.dart';
import 'package:workbook/screens/customer_support/customer_support_sub_screen.dart';
import 'package:workbook/widgets/customer_support_item.dart';
import 'package:workbook/widgets/my_appbar.dart';
import '/screens/customer_support/customer_support_controller.dart';
import 'package:get/get.dart';

class CustomerSupportScreen extends StatelessWidget {
  CustomerSupportScreen({Key? key}) : super(key: key);
  final CustomerSupportController _customerSupportController =
      Get.put(CustomerSupportController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(true, 'Customer Support', false, []),
      backgroundColor: ColorConstants.grayLevel6,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
          bottom: 2.h,
          right: 4.w,
        ),
        child: FloatingActionButton(
          onPressed: () {
            Get.toNamed(
              Routes.createNewTicketScreen,
            );
          },
          backgroundColor: ColorConstants.primaryColor,
          child: SvgPicture.asset(
            AppImages.plusIcon,
            color: ColorConstants.whiteColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 4.w,
          right: 4.w,
          top: 4.h,
        ),
        child: ListView.builder(
          itemCount: customerSupport.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(
                  CustomerSupportSubScreen(
                    title: customerSupport[index]['title'],
                    description: customerSupport[index]['description'],
                    status: customerSupport[index]['status'],
                    color: customerSupport[index]['color'],
                  ),
                );
              },
              child: CustomerSupportItem(
                title: customerSupport[index]['title'],
                description: customerSupport[index]['description'],
                days: customerSupport[index]['days'],
                status: customerSupport[index]['status'],
                color: customerSupport[index]['color'],
              ),
            );
          },
        ),
      ),
    );
  }
}
