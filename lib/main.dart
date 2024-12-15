import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travle_app/pages/home_page.dart';
import 'package:travle_app/pages/login_page.dart';
import 'package:travle_app/pages/sign_page.dart';
import 'package:travle_app/pages/welcom-Page.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) =>const TravelApp() , 
  ),);
}
class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
    routes: {
    '/': (context) => const Welcom(),
    '/login': (context) => const Login(),
    '/signup': (context) => const Sign(),
    '/homepage':(context) => const HomePage(),
    }
     
    );
  }
}
