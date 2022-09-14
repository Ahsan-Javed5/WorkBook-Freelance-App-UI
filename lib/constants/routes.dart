import 'package:get/get.dart';
import 'package:workbook/screens/change_password/change_password_screen.dart';
import 'package:workbook/screens/create_new_ticket/create_new_ticket_screen.dart';
import 'package:workbook/screens/customer_support/customer_support_screen.dart';
import 'package:workbook/screens/customer_support/customer_support_sub_screen.dart';
import 'package:workbook/screens/document_verification/document_verification_screen.dart';
import 'package:workbook/screens/forgot_password/forgot_password.dart';
import 'package:workbook/screens/home_screen/home_screen.dart';
import 'package:workbook/screens/login/login_screen.dart';
import 'package:workbook/screens/my_tasks/my_task_screen.dart';
import 'package:workbook/screens/otp_verification/otp_screen.dart';
import 'package:workbook/screens/referral_code/referral_screen.dart';
import 'package:workbook/screens/sign_up/signup_screen.dart';
import 'package:workbook/screens/unknown_route.dart';
import 'package:workbook/screens/welcome_screen.dart';

class Routes {
  static const String baseUrl = '';
  static const String noPageFound = '/noPageFound';
  static const String welcomeScreen = '/WelcomeScreen';
  static const String loginScreen = '/loginScreen';
  static const String signupScreen = '/signupScreen';
  static const String forgotPasswordScreen = '/forgotPasswordScreen';
  static const String otpScreen = '/otpScreen';
  static const String referralScreen = '/referralScreen';
  static const String homeScreen = '/homeScreen';
  static const String myTaskScreen = '/myTaskScreen';
  static const String changePasswordScreen = '/changePasswordScreen';
  static const String customerSupportScreen = '/customerSupportScreen';
  static const String createNewTicketScreen = '/createNewTicketScreen';
  static const String documentVerificationScreen =
      '/documentVerificationScreen';

  static getUnknownRoute() {
    return GetPage(
      name: noPageFound,
      page: () => const UnknownRoutePage(),
      transition: Transition.zoom,
    );
  }

  static getInitialRoute() {
    //return welcomeScreen;
    return loginScreen;
  }

  static getPages() {
    return [
      GetPage(
        name: welcomeScreen,
        page: () => const WelcomeScreen(),
      ),
      GetPage(
        name: loginScreen,
        page: () => LoginScreen(),
      ),
      GetPage(
        name: signupScreen,
        page: () => SignUpScreen(),
      ),
      GetPage(
        name: forgotPasswordScreen,
        page: () => const ForgotPasswordScreen(),
      ),
      GetPage(
        name: otpScreen,
        page: () => OtpScreen(),
      ),
      GetPage(
        name: referralScreen,
        page: () => ReferralScreen(),
      ),
      GetPage(
        name: homeScreen,
        page: () => HomeScreen(),
      ),
      GetPage(
        name: myTaskScreen,
        page: () => MyTaskScreen(),
      ),
      GetPage(
        name: changePasswordScreen,
        page: () => ChangePasswordScreen(),
      ),
      GetPage(
        name: customerSupportScreen,
        page: () => CustomerSupportScreen(),
      ),
      GetPage(
        name: createNewTicketScreen,
        page: () => CreateNewTicketScreen(),
      ),
      GetPage(
        name: documentVerificationScreen,
        page: () => DocumentVerificationScreen(),
      ),
    ];
  }

  static to(String route, {Map<String, dynamic>? arguments}) =>
      Get.toNamed(route, arguments: arguments);

  static offAllTo(String route, {Map<String, dynamic>? arguments}) =>
      Get.offAllNamed(route, arguments: arguments);

  static offTo(String route, {Map<String, dynamic>? arguments}) =>
      Get.offNamed(route, arguments: arguments);

  static back() => Get.back();
}
