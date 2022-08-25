// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// import 'home.dart';
//
// class WelComePage extends StatefulWidget {
//   const WelComePage({Key? key}) : super(key: key);
//
//   @override
//   _WelComePageState createState() => _WelComePageState();
// }
//
// class _WelComePageState extends State<WelComePage> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(const Duration(seconds: 3), () => navigation());
//   }
//
//   void navigation() async {
//     Navigator.of(context).pushAndRemoveUntil(
//         MaterialPageRoute(builder: (context) => const Home()),
//         (route) => false);
//   }
//
// 
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//         statusBarColor: Colors.white,
//         statusBarIconBrightness: Brightness.light));
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 248, 246, 246),
//         body: SizedBox(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height,
//             child: Center(
//               child: Image.asset('assets/images/images.png'),
//             )),
//       ),
//     );
//   }
// }
