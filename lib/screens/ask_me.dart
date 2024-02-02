import 'package:flutter/material.dart';

import '../homePage.dart';

class AskMe extends StatefulWidget {
  const AskMe({super.key});

  @override
  State<AskMe> createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => HomePage())));
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        toolbarHeight: 80,
        backgroundColor: Colors.grey[200],
        title: const Text(
          ' اسألني',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
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
              padding: const EdgeInsets.only(right: 40, top: 10),
              child: Text(
                "لا تتردد في الأستفسار عن أي فتوى",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
                right: 40,
                left: 40,
              ),
              child: TextFormField(
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: "اكتب هنا سؤالك , و سيتم الرد خلال فترة قريبة",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 228, 73, 26))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 228, 73, 26))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 40, left: 40),
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                textColor: Colors.white,
                padding: const EdgeInsets.all(10),
                color: const Color.fromARGB(255, 228, 73, 26),
                child: const Text(
                  " إرسال",
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
