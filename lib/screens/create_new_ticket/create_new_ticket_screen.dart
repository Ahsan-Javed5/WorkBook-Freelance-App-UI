import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '/constants/app_images.dart';
import '/constants/font_constants.dart';
import '/constants/routes.dart';
import '/widgets/my_appbar.dart';
import '/constants/color_constants.dart';

class CreateNewTicketScreen extends StatelessWidget {
  const CreateNewTicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(true, 'Create New Ticket', false, []),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 4.h,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Title of the ticket',
                  labelText: 'Title',
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              TextFormField(
                maxLines: 7,
                decoration: const InputDecoration(
                  hintText: 'Type Here...',
                  labelText: 'Description',
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                width: 38.w,
                height: 5.5.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: ColorConstants.primaryColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.5.w,
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        AppImages.attachmentIcon,
                      ),
                      Text(
                        ' Attach File',
                        style: TextStyle(
                          fontSize: 11.5.sp,
                          color: ColorConstants.whiteColor,
                          fontFamily: FontConstants.comfortaaSemiBold,
                        ),
                      ),
                    ],
                  ),
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
              SizedBox(
                height: 9.h,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(
                      Routes.customerSupportScreen,
                    );
                  },
                  child: const Text(
                    'Create',
                    style: TextStyle(color: ColorConstants.primaryColor),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
