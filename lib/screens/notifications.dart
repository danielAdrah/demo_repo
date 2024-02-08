import 'package:al_tawba/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mainPage.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
            onPressed: () {
              Get.to(const HomePage());
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.grey[200],
        title: const Text(
          'الإشعارات',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'))),
        child: ListView(
          children: [
            Container(),
          ],
        ),
      ),
    );
  }
}
