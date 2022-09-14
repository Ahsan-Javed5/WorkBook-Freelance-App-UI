import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:workbook/constants/routes.dart';
import 'package:workbook/constants/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return GetMaterialApp(
          title: 'Workbook',
          debugShowCheckedModeBanner: false,
          theme: getAppThemeData(),
          unknownRoute: Routes.getUnknownRoute(),
          initialRoute: Routes.getInitialRoute(),
          getPages: Routes.getPages(),
        );
      },
    );
  }
}
