import 'package:al_tawba/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(const HomePage());
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        toolbarHeight: 80,
        backgroundColor: Colors.grey[200],
        title: const Text(
          'تواصل معنا',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
          ),
        ),
        child: Column(
          children: const [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "يسعدنا تواصلكم معنا \nو نرحب باستفساراتكم و اقتراحاتكم\nعلى وسائل التواصل الأجتماعي\nأو بالاتصال بنا على هاتف المكتب",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "  :أوقات العمل \n   من السبت إلى الخميس\nمن 8:00 صباحا إلى 12:00 ظهرا   \nو من 4:00 مساءا إلى 8:00 مساءا    ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: Text(
                "الجمعة مغلق",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 228, 73, 26)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
