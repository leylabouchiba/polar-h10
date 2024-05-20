import 'package:get/get.dart';
import 'package:VirtualCoach/app/modules/auth/views/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
