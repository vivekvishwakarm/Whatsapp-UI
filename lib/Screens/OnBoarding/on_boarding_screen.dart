import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Login/login_screen.dart';
import 'package:whatsapp_ui/Widgets/ui_helper.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/boarding.png"),
            const SizedBox(height: 20),
            UiHelper.customText(
              text: "WELCOME TO WHATSAPP",
              height: 15,
              color: const Color(0XFF000000),
            ),
            const SizedBox(height: 10),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400), // default color
                children: <TextSpan>[
                  TextSpan(
                    text:
                        "Read Out ", // Use TextStyle instead of a custom widget
                  ),
                  TextSpan(
                    text: "Privacy Policy ",
                    style: TextStyle(color: Color(0XFF00A884)),
                  ),
                  TextSpan(
                    text: "Tap \"Agree and continue\"\n to accept the ",
                  ),
                  TextSpan(
                    text: "Terms of Service",
                    style: TextStyle(color: Color(0XFF00A884)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          );
        },
        buttonName: "Agree and continue",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
