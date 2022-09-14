import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:workbook/constants/color_constants.dart';
import 'package:workbook/constants/font_constants.dart';
import 'package:workbook/widgets/my_appbar.dart';

class DocumentVerificationScreen extends StatelessWidget {
  const DocumentVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.grayLevel7,
      appBar: MyAppBar(true, 'Document Verification', false, []),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 4.h,
            ),
            Text(
              "Confirm Method",
              style: TextStyle(
                fontFamily: FontConstants.comfortaaSemiBold,
                fontSize: 13.sp,
                color: ColorConstants.blackColor,
              ),
            ),
            Row(
              children: [
                buttonTitle("Passport", HexColor("#F0A500")),
                buttonTitle("ID Card", null),
              ],
            ),
            Row(
              children: [
                buttonTitle("Driving Licence", null),
                buttonTitle("Residence Permit", null),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: ColorConstants.primaryColor,
                padding: EdgeInsets.symmetric(
                  horizontal: 4.5.w,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Upload Picture',
                style: TextStyle(
                  color: ColorConstants.whiteColor,
                  fontFamily: FontConstants.comfortaaBold,
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: HexColor("#F0A500"),
                  maxRadius: 12,
                  child: Text(
                    "i",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "File must meet the requirements:",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Comfortaa",
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.5),
            Text(
              "- color image(max. 8000 x 8000 Px)",
              style: TextStyle(
                fontSize: 11,
                fontFamily: "Comfortaa",
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 10.5),
            Text(
              "- Maximum size (10 MB)",
              style: TextStyle(
                fontSize: 11,
                fontFamily: "Comfortaa",
              ),
            ),
            SizedBox(height: 10.5),
            Text(
              "- Formats: JPG, PNG, PDF",
              style: TextStyle(
                fontSize: 11,
                fontFamily: "Comfortaa",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 51.0),
              child: Container(
                width: 174,
                height: 104,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor("#F6F6F6"),
                    border: Border.all(color: HexColor("#707070"))),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Confirm",
                style: TextStyle(
                  color: ColorConstants.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded buttonTitle(title, color) {
    return Expanded(
      child: ListTile(
        title: Transform.translate(
          offset: const Offset(-20, 0),
          child: Text(
            '$title',
            style: const TextStyle(
              fontFamily: FontConstants.comfortaaMedium,
              fontSize: 12,
            ),
          ),
        ),
        leading: Radio(
          value: 1,
          activeColor: color,
          groupValue: 3,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
