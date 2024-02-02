import 'package:flutter/material.dart';
import '../data/shared/card_design.dart';
import 'ask_me.dart';
import 'contact.dart';
import 'prayer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'))),
        child: ListView(children: [
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Image(image: AssetImage('assets/images/logo2.png')),
          ),
          const SizedBox(
            height: 29,
          ), //change
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cardList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 125, crossAxisCount: 2),
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      if(i == 3){
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const AskMe()));
                      }
                      if (i == 8) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Contact()));
                      }
                      if (i == 7) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Prayer()));
                      }
                    },
                    child: Column(children: [
                      Icon(
                        cardList[i].icon,
                        size: 65,
                        color: const Color.fromARGB(255, 228, 73, 26),
                      ),
                      Text(
                        cardList[i].text!,
                        style: const TextStyle(fontSize: 19),
                      ),
                    ]),
                  );
                }),
          )
          //
        ]),
      ),
    );
  }
}
