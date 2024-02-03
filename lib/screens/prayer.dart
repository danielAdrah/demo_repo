import 'package:flutter/material.dart';

import '../data/shared/specific_prayer_design.dart';
import '../homePage.dart';

class Prayer extends StatefulWidget {
  const Prayer({super.key});

  @override
  State<Prayer> createState() => _PrayerState();
}

class _PrayerState extends State<Prayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          leading: IconButton(
            onPressed: () {},
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomePage())));
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.grey[200],
          title: const Text(
            'أدعية مختارة',
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
                  image: AssetImage("assets/images/background.png"))),
          child: GridView.builder(
            itemCount: prayerList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 228, 73, 26),
                          width: 2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        prayerList[index].text!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 22,
                            color: Color.fromARGB(255, 228, 73, 26)),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ));
  }
}
