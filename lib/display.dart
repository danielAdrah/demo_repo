import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homePage.dart';

class Display extends StatefulWidget {
  const Display({super.key});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  List<String> images = [
    "assets/images/background.png",
    "assets/images/ll.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
            onPressed: () {
              Get.to(HomePage());
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.grey[200],
        title: const Text(
          '####',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: images.length,
          itemBuilder: (context, i) {
            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage(images[i]),
              ),
            );
          }),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: ListView(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height,
//               width: MediaQuery.of(context).size.width,
//               child: Image.network(
//                 'https://your-image-url.jpg',
//                 fit: BoxFit.cover,
//               ),
//             ),