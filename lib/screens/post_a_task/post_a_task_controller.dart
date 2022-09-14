import 'package:get/get.dart';

class PostATaskController extends GetxController {
  final RxBool isMorning = true.obs;
  final RxBool isEvening = false.obs;
  final RxBool isNight = false.obs;
  final RxBool isRemote = true.obs;
  final RxBool isOnsite = false.obs;
}
