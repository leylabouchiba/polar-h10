import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:VirtualCoach/app/modules/dashboard/dashboard_controller.dart';
import 'package:VirtualCoach/app/modules/dashboard/dashboard_controllerCoach.dart';
import 'package:VirtualCoach/app/modules/dashboard/views/history/history_page.dart';
import 'package:VirtualCoach/app/modules/dashboard/views/home/home_page.dart';
import 'package:VirtualCoach/app/modules/dashboard/views/list%20user/FetchAllUsersPage%20.dart';
import 'package:VirtualCoach/app/modules/dashboard/views/settings/setting_page.dart';
import 'package:VirtualCoach/app/modules/dashboard/views/workout/workout_page.dart';

class dashboardCoach extends StatelessWidget {
  const dashboardCoach({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardControllerCoach>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                FetchAllUsersPage(),
                const SettingPage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black54,
            selectedItemColor: Theme.of(context).primaryColor,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            elevation: 8,
            items: [
              _bottomNavigationBarItem(
                icon: FontAwesomeIcons.house,
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: FontAwesomeIcons.gear,
                label: 'Setting',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({
    required IconData icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
