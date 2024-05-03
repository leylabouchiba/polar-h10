import 'package:get/get.dart';

class DashboardControllerCoach extends GetxController {
  final double screenHeight = Get.height;
  final double screenWidth = Get.width;
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
