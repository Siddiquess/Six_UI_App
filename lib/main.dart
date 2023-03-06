import 'package:flutter/material.dart';
import 'package:six_ui_app/screens/screen_fifth/fifth_page.dart';
import 'package:six_ui_app/screens/screen_one/screen_one.dart';
import 'package:six_ui_app/screens/screen_sixth/sixth_page.dart';
import 'package:six_ui_app/screens/screen_three/third_page.dart';
import 'package:six_ui_app/screens/screen_two/screen_two.dart';

import 'screens/screen_fourth/fourth_page.dart';
import 'screens/screen_two/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
       initialRoute: '/',
      routes: {
    '/': (context) => const ScreenOne(),
    '/second': (context) => const SecondPage(),
    '/third':(context) => const ThirdPage(),
    '/fourth':(context) => const FourthPage(),
    '/fifth':(context) => const FifthPage(),
    '/sixth':(context) => const SixthPage(),
    '/secndbtm':(context) =>  BottomNavBar(),

  }
    );
  }
}


