import 'package:get/get.dart';
import 'package:VirtualCoach/app/modules/dashboard/views/settings/views/profile/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
