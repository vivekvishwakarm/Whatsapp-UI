import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Regular",
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0XFF00A884),
        ),
        useMaterial3: false,
      ),
      home:const SplashScreen(),
    );
  }
}
