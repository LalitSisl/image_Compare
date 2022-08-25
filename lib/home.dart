// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:image_compare/image_compare.dart';
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   File? image1;
//   File? image2;
//   File? imageFile1;
//   File? imageFile2;
//   double? diff;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           centerTitle: false,
//           title: const Text('Image Compare'),
//         ),
//         body: Center(
//           child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Column(
//                   children: [
//                     imageFile1 != null
//                         ? SizedBox(
//                             width: 100,
//                             height: 100,
//                             child: Image.file(
//                               imageFile1!,
//                               fit: BoxFit.cover,
//                             ),
//                           )
//                         : Container(),
//                     ElevatedButton(
//                         onPressed: () async {
//                           final ImagePicker _picker =
//                               ImagePicker(); //added type ImagePicker
//                           var image1 = await _picker.getImage(
//                               source: ImageSource.camera);
//
//                           if (image1 != null) {
//                             setState(() {
//                               imageFile1 = File(image1.path);
//                             });
//                           }
//                         },
//                         child: const Text('Image 1')),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     imageFile2 != null
//                         ? SizedBox(
//                             width: 100,
//                             height: 100,
//                             child: Image.file(
//                               imageFile2!,
//                               fit: BoxFit.cover,
//                             ),
//                           )
//                         : Container(),
//                     ElevatedButton(
//                         onPressed: () async {
//                           final ImagePicker _picker =
//                               ImagePicker(); //added type ImagePicker
//                           var image2 = await _picker.getImage(
//                               source: ImageSource.camera);
//
//                           if (image2 != null) {
//                             setState(() {
//                               imageFile2 = File(image2.path);
//                             });
//                           }
//                         },
//                         child: const Text('Image 2')),
//                   ],
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             ElevatedButton(
//                 onPressed: () async {
//                   var imageResult = await compareImages(
//                       src1: imageFile1,
//                       src2: imageFile2,
//                       algorithm: EuclideanColorDistance(ignoreAlpha: true));
//                   print('Difference: ${imageResult * 100}%');
//                   print('Difference: ${imageResult}');
//                   setState(() {
//                     diff = imageResult * 100;
//                   });
//                 },
//                 child: const Text('Diff')),
//             const SizedBox(
//               height: 50,
//             ),
//             diff != null ? Text('Difference: ${diff.toString()}') : Container(),
//           ]),
//         ),
//       ),
//     );
//   }
// }
