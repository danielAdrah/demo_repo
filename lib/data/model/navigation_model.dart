import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../screens/mainPage.dart';
import '../../screens/notifications.dart';
import '../../screens/personal.dart';

class NavigationModel extends GetxController {
  var selectedIndex =  0;
  final List<Widget> pages = [
    const MainPage(),
    const Notifications(),
    const Personal(),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    update(); // Call update to notify listeners
  }
}