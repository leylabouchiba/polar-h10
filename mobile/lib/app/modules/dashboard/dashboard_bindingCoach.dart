import 'package:get/get.dart';
import 'package:VirtualCoach/app/modules/dashboard/dashboard_controller.dart';
import 'package:VirtualCoach/app/modules/dashboard/dashboard_controllerCoach.dart';
import 'package:VirtualCoach/app/modules/dashboard/views/history/history_controller.dart';
import 'package:VirtualCoach/app/modules/dashboard/views/home/home_controller.dart';
import 'package:VirtualCoach/app/modules/dashboard/views/home/views/mood_picker_widget.dart';
import 'package:VirtualCoach/app/modules/dashboard/views/list%20user/FetchAllUsersController%20.dart';
import 'package:VirtualCoach/app/modules/dashboard/views/settings/setting_controller.dart';
import 'package:VirtualCoach/app/modules/dashboard/views/workout/workout_controller.dart';

class DashboardBindingCoach extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<DashboardControllerCoach>(() => DashboardControllerCoach());
    Get.lazyPut<FetchAllUsersController>(() => FetchAllUsersController());
    Get.lazyPut<SettingController>(() => SettingController());
  }
}
