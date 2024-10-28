import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Profile/profile_screen.dart';
import 'package:whatsapp_ui/Widgets/ui_helper.dart';

class OtpScreen extends StatefulWidget {
  OtpScreen({super.key, required this.phoneNumber});
  String phoneNumber;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: UiHelper.customText(
            text: "Verify your number",
            height: 20,
            color: const Color(0XFF00A884),
            fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Center(
          child: Column(
            children: [
              UiHelper.customText(
                  text: "You've tried to register +91${widget.phoneNumber}",
                  height: 16),
              UiHelper.customText(
                  text: "recently. Wait before requesting an sms or call",
                  height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UiHelper.customText(text: "with your code", height: 16),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: UiHelper.customText(
                      text: "Wrong Number?",
                      height: 16,
                      color: const Color(0XFF00A884),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UiHelper.customContainer(otp1Controller),
                    UiHelper.customContainer(otp2Controller),
                    UiHelper.customContainer(otp3Controller),
                    UiHelper.customContainer(otp4Controller),
                    UiHelper.customContainer(otp5Controller),
                    UiHelper.customContainer(otp6Controller),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              UiHelper.customText(
                  text: "Didn't receive code?",
                  height: 14,
                  color: const Color(0XFF00A884), fontWeight: FontWeight.bold),
            ],
          ),
        ),
      ),
      floatingActionButton: UiHelper.customButton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileScreen(),),);
      }, buttonName: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
