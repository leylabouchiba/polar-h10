import 'package:get/get.dart';
import 'package:VirtualCoach/app/modules/dashboard/views/settings/setting_controller.dart';

class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingController>(() => SettingController());
  }
}
