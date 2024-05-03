import 'package:get/get.dart';
import 'package:hatofit/app/modules/dashboard/dashboard_controller.dart';
import 'package:hatofit/app/modules/dashboard/dashboard_controllerCoach.dart';
import 'package:hatofit/app/modules/dashboard/views/history/history_controller.dart';
import 'package:hatofit/app/modules/dashboard/views/home/home_controller.dart';
import 'package:hatofit/app/modules/dashboard/views/home/views/mood_picker_widget.dart';
import 'package:hatofit/app/modules/dashboard/views/settings/setting_controller.dart';
import 'package:hatofit/app/modules/dashboard/views/workout/workout_controller.dart';

class DashboardBindingCoach extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<DashboardControllerCoach>(() => DashboardControllerCoach());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SettingController>(() => SettingController());
    Get.lazyPut<MoodController>(() => MoodController());
  }
}
