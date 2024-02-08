import 'package:al_tawba/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
          onPressed: () {
            Get.to(const HomePage());
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.grey[200],
        title: const Text(
          'دخول الحجاج',
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
            const Padding(
              padding: EdgeInsets.only(top: 45),
              child: Text(
                "هذه الصفحة مخصصة للحجاج المسجلين معنا\nفي الحملة لحج هذه السنة",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  label: const Text("الرقم الشخصي"),
                  labelStyle:
                      const TextStyle(color: Color.fromARGB(255, 228, 73, 26)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide()),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 228, 73, 26))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
              child: TextField(
                decoration: InputDecoration(
                  label: const Text(" رقم الجوال"),
                  labelStyle:
                      const TextStyle(color: Color.fromARGB(255, 228, 73, 26)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 228, 73, 26)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 228, 73, 26)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 40),
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                textColor: Colors.white,
                padding: const EdgeInsets.all(10),
                color: const Color.fromARGB(255, 228, 73, 26),
                child: const Text(
                  "تسجيل دخول",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
