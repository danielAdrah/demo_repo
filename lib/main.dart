import 'package:flutter/material.dart';
import 'homePage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 228, 73, 26)),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

// class GalleryScreen extends StatelessWidget {
//   final List<String> imagePaths = [
//     'assets/images/image1.jpg',
//     'assets/images/image2.jpg',
//     // Add more image paths here
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Image Gallery')),
//       body: PhotoViewGallery.builder(
//         scrollPhysics: const BouncingScrollPhysics(),
//         builder: (BuildContext context, int index) {
//           return PhotoViewGalleryPageOptions(
//             imageProvider: AssetImage(imagePaths[index]),
//             initialScale: PhotoViewComputedScale.contained *  0.8,
//             minScale: PhotoViewComputedScale.contained *  0.8,
//             maxScale: PhotoViewComputedScale.covered *  1.1,
//             heroAttributes: HeroAttributes(tag: 'image-$index'),
//           );
//         },
//         itemCount: imagePaths.length,
//         loadingBuilder: (context, progress) => Center(
//           child: Container(
//             width:  20.0,
//             height:  20.0,
//             child: CircularProgressIndicator(
//               value: progress == null
//                   ? null
//                   : progress.cumulativeBytesLoaded / progress.expectedTotalBytes,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }