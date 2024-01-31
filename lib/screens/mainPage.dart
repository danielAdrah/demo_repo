import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../data/shared/card_design.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var svg = "assets/images/logo.svg";
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
                    onTap: () {},
                    child: Column(children: [
                      Icon(
                        cardList[i].icon,
                        size: 65,
                        color: Color.fromARGB(255, 228, 73, 26),
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

// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     InkWell(
//       onTap: () {},
//       child: Column(
//         children: const [
//           Icon(Icons.location_on,
//               size: 65, color: Color.fromARGB(255, 228, 73, 26)),
//           Text(
//             'موقع الحملة',
//             style: TextStyle(
//               fontSize: 19,
//             ),
//           ),
//         ],
//       ),
//     ),
//     InkWell(
//       onTap: () {},
//       child: Column(
//         children: const [
//           Icon(Icons.apartment,
//               size: 65, color: Color.fromARGB(255, 228, 73, 26)),
//           Padding(
//             padding: EdgeInsets.only(top: 5),
//             child: Text(
//               'عن الحملة',
//               style: TextStyle(
//                 fontSize: 19,
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ],
// ),
// const SizedBox(
//   height: 30,
// ),
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     InkWell(
//       onTap: () {},
//       child: Column(
//         children: const [
//           Icon(Icons.timer_outlined,
//               size: 65, color: Color.fromARGB(255, 228, 73, 26)),
//           Text(
//             'عداد الطواف',
//             style: TextStyle(
//               fontSize: 19,
//             ),
//           ),
//         ],
//       ),
//     ),
//     InkWell(
//       onTap: () {},
//       child: Column(
//         children: const [
//           Icon(Icons.contact_support,
//               size: 65, color: Color.fromARGB(255, 228, 73, 26)),
//           Padding(
//             padding: EdgeInsets.only(top: 5),
//             child: Text(
//               'اسألني',
//               style: TextStyle(
//                 fontSize: 19,
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ],
// ),
// const SizedBox(
//   height: 30,
// ),
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     InkWell(
//       onTap: () {},
//       child: Column(
//         children: const [
//           Icon(Icons.account_box,
//               size: 65, color: Color.fromARGB(255, 228, 73, 26)),
//           Text(
//             'معلومات عن الحج',
//             style: TextStyle(
//               fontSize: 19,
//             ),
//           ),
//         ],
//       ),
//     ),
//     InkWell(
//       onTap: () {},
//       child: Column(
//         children: const [
//           Icon(Icons.explore,
//               size: 65, color: Color.fromARGB(255, 228, 73, 26)),
//           Padding(
//             padding: EdgeInsets.only(top: 5),
//             child: Text(
//               'اتجاه القبلة',
//               style: TextStyle(
//                 fontSize: 19,
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ],
// ),
// const SizedBox(
//   height: 30,
// ),
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     InkWell(
//       onTap: () {},
//       child: Column(
//         children: const [
//           Icon(Icons.book,
//               size: 65, color: Color.fromARGB(255, 228, 73, 26)),
//           Text(
//             ' القرأن الكريم ',
//             style: TextStyle(
//               fontSize: 19,
//             ),
//           ),
//         ],
//       ),
//     ),
//     InkWell(
//       onTap: () {},
//       child: Column(
//         children: const [
//           Icon(Icons.handshake_outlined,
//               size: 65, color: Color.fromARGB(255, 228, 73, 26)),
//           Padding(
//             padding: EdgeInsets.only(top: 5),
//             child: Text(
//               'ادعية مختارة ',
//               style: TextStyle(
//                 fontSize: 19,
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ],
// ),
// const SizedBox(
//   height: 30,
// ),
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     InkWell(
//       onTap: () {},
//       child: Column(
//         children: const [
//           Icon(Icons.phone_in_talk,
//               size: 65, color: Color.fromARGB(255, 228, 73, 26)),
//           Text(
//             '  تواصل معنا ',
//             style: TextStyle(
//               fontSize: 19,
//             ),
//           ),
//         ],
//       ),
//     ),
//     InkWell(
//       onTap: () {},
//       child: Column(
//         children: const [
//           Icon(Icons.mosque,
//               size: 65, color: Color.fromARGB(255, 228, 73, 26)),
//           Padding(
//             padding: EdgeInsets.only(top: 5),
//             child: Text(
//               ' أوقات الصلاة ',
//               style: TextStyle(
//                 fontSize: 19,
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ],
// ),
