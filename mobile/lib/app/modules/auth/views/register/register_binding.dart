import 'package:get/get.dart';
import 'package:VirtualCoach/app/modules/auth/views/register/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}
