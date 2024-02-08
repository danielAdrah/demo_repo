import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data/model/navigation_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  final NavigationModel navModel = Get.put(NavigationModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetBuilder<NavigationModel>(
          init: NavigationModel(),
          builder: (controller) {
            return BottomNavigationBar(
                currentIndex: controller.selectedIndex,
                onTap: (int index) {
                  controller.onItemTapped(index);
                },
                iconSize: 45,
                selectedItemColor: const Color.fromARGB(255, 228, 73, 26),
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_active),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: "",
                  ),
                ]);
          }),
      body: GetBuilder<NavigationModel>(
        init: NavigationModel(), // Initialize the model
        builder: (controller) => controller.pages[controller.selectedIndex],
      ),
    );
  }
}


