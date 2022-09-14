import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:workbook/constants/color_constants.dart';
import 'package:workbook/constants/font_constants.dart';

ThemeData getAppThemeData() {
  return ThemeData(
    primaryColor: ColorConstants.primaryColor,
    accentColor: ColorConstants.accentColor,
    unselectedWidgetColor: ColorConstants.unSelectedWidgetColor,
    primaryColorDark: ColorConstants.whiteColor,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: ColorConstants.primaryColor,
    ),
    appBarTheme: const AppBarTheme(
      color: ColorConstants.whiteColor,
      elevation: 2,
      titleTextStyle: TextStyle(
        fontFamily: FontConstants.comfortaaBold,
        color: ColorConstants.accentColor,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorConstants.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: ColorConstants.transparent,
      ),
    ),
    primarySwatch: const MaterialColor(0xFF40C979, {
      50: ColorConstants.grayVeryLight,
      100: ColorConstants.grayLight,
      200: ColorConstants.gray,
      300: ColorConstants.grayLevel2,
      400: ColorConstants.grayDark,
      500: ColorConstants.whiteGrayButtonBackground,
      600: ColorConstants.unSelectedWidgetColor,
      700: ColorConstants.dividerColor,
      800: ColorConstants.primaryDarkColor,
      900: ColorConstants.appBlack
    }),
    bottomAppBarColor: ColorConstants.appBlack,
    fontFamily: FontConstants.comfortaaRegular,
    shadowColor: ColorConstants.shadowColor,
    focusColor: ColorConstants.appBlack,
    highlightColor: ColorConstants.whiteGrayButtonBackground,
    hintColor: ColorConstants.bodyTextColor,
    splashColor: ColorConstants.grayVeryLight,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(vertical: 2.5.h, horizontal: 5.w),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelStyle: TextStyle(
        color: ColorConstants.lightGray,
        fontSize: 11.5.sp,
        fontFamily: FontConstants.comfortaaMedium,
      ),
      hintStyle: TextStyle(
        color: ColorConstants.lightGray,
        fontSize: 11.5.sp,
        fontFamily: FontConstants.comfortaaSemiBold,
      ),
      focusColor: ColorConstants.primaryColor,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 1.3,
          color: ColorConstants.primaryColor,
        ),
        borderRadius: BorderRadius.all(Radius.circular(2.4.w)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.4.w)),
        borderSide: const BorderSide(
          width: 1.3,
          color: ColorConstants.lightGray,
        ),
      ),
      hoverColor: ColorConstants.primaryColor,
      //filled: true,
      //fillColor: ColorConstants.appBlack,
      // border: OutlineInputBorder(
      //   borderRadius: BorderRadius.all(Radius.circular(5.w)),
      //   borderSide: const BorderSide(
      //     color: ColorConstants.lightGray,
      //     //width: 10,
      //     style: BorderStyle.solid,
      //   ),
      // ),
    ),

    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorConstants.primaryColor,
      selectionColor: ColorConstants.primaryColor,
      selectionHandleColor: ColorConstants.primaryColor,
    ),

    tabBarTheme: TabBarTheme(
      unselectedLabelColor: ColorConstants.unSelectedWidgetColor,
      labelColor: ColorConstants.appBlue,
      indicatorSize: TabBarIndicatorSize.tab,
      labelPadding: EdgeInsets.only(bottom: 1.0.w, left: 3.5.w, right: 3.5.w),
      indicator: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 0.8.w, color: ColorConstants.appBlue))),
      unselectedLabelStyle: TextStyle(
        fontSize: 14.5.sp,
        fontFamily: FontConstants.comfortaaLight,
      ),
      labelStyle: TextStyle(
        fontSize: 14.5.sp,
        color: ColorConstants.appBlue,
        fontFamily: FontConstants.comfortaaLight,
      ),
    ),

    /// Outlined Button Theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: ColorConstants.blackShade, width: 1),
        primary: ColorConstants.blackShade,
        padding: EdgeInsets.symmetric(vertical: 1.6.h),
        minimumSize: Size(40.w, 2.h),
      ),
    ),

    /// Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        primary: ColorConstants.accentColor,
        padding: EdgeInsets.symmetric(vertical: 2.3.h),
        minimumSize: Size(100.w, 5.h),
      ),
    ),

    /// Text Button Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: ColorConstants.accentColor,
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textStyle: TextStyle(
          fontSize: 11.sp,
          fontFamily: FontConstants.comfortaaBold,
          color: ColorConstants.accentColor,
        ),
      ),
    ),

    /// Icon Button Theme
    iconTheme: const IconThemeData(
      color: ColorConstants.appBlack,
    ),

    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 22.5.sp,
        letterSpacing: -0.5,
        fontFamily: FontConstants.comfortaaBold,
        color: ColorConstants.appBlack,
      ),
      headline2: TextStyle(
        fontSize: 14.5.sp,
        letterSpacing: -0.5,
        fontFamily: FontConstants.comfortaaSemiBold,
        color: ColorConstants.lightGray,
      ),
      headline3: TextStyle(
        fontSize: 11.5.sp,
        //letterSpacing: -0.5,
        fontFamily: FontConstants.comfortaaBold,
        color: ColorConstants.lightGray,
      ),
      headline4: TextStyle(
        fontSize: 13.0.sp,
        fontFamily: FontConstants.comfortaaBold,
        color: ColorConstants.accentColor,
      ),
      headline5: TextStyle(
        fontSize: 11.sp,
        fontFamily: FontConstants.comfortaaBold,
        color: ColorConstants.accentColor,
      ),
      headline6: TextStyle(
        fontSize: 11.sp,
        fontFamily: FontConstants.comfortaaSemiBold,
        color: ColorConstants.accentColor,
      ),

      // TextField font
      subtitle1: const TextStyle(
        fontFamily: FontConstants.comfortaaBold,
      ),
      subtitle2: TextStyle(
        fontSize: 8.5.sp,
        fontFamily: FontConstants.comfortaaBold,
        color: ColorConstants.whiteColor,
      ),

      /// Using this style for radio button text and other place with 16.0.sp and #0d1111 color
      bodyText1: TextStyle(
        fontSize: 13.0.sp,
        fontFamily: FontConstants.comfortaaRegular,
        color: ColorConstants.appBlack,
      ),

      /// This style automatically applies on all the [Text]
      bodyText2: TextStyle(
        fontSize: 11.sp,
        fontWeight: FontWeight.w300,
        fontFamily: FontConstants.comfortaaMedium,
        color: ColorConstants.lightGray,
      ),

      /// This style automatically applies on the text of [ElevatedButton, OutlinedButton]
      /// also we can define different text style for these button in there respective
      /// theme data above
      button: TextStyle(
        fontSize: 12.5.sp,
        fontFamily: FontConstants.comfortaaBold,
        color: ColorConstants.accentColor,
      ),
    ),
  );
}
