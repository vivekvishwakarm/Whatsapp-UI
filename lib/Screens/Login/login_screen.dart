import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/OTP/otp_screen.dart';
import 'package:whatsapp_ui/Widgets/ui_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedCountry = "India"; // Default value
  List<String> countries = ["India", "America", "Italy", "Dubai", "Africa"];

  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: UiHelper.customText(
          text: "Enter your phone number",
          height: 20,
          color: const Color(0XFF00A884),
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UiHelper.customText(
                text:
                    "Whatsapp will need to verify your phone",
                height: 16,
              ),
              UiHelper.customText(
                text:
                "number. Carrier charges may apply",
                height: 16,
              ),
              UiHelper.customText(
                text: "What's my number",
                height: 16,
                color: const Color(0XFF00A884),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: DropdownButtonFormField<String>(
                  items: countries.map((String country) {
                    return DropdownMenuItem(
                      value: country,
                      child: Text(country),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      // Null safety check
                      setState(() {
                        selectedCountry = newValue;
                      });
                    }
                  },
                  value: selectedCountry,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF00A884),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF00A884),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "+91",
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0XFF00A884),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0XFF00A884),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0XFF00A884),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 250,
                    child: TextField(
                      controller: numberController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "Enter your number",
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0XFF00A884),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0XFF00A884),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0XFF00A884),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: UiHelper.customButton(
          callback: () {
            login(numberController.text.toString());
          },
          buttonName: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phoneNumber) {
    if (phoneNumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Enter your Phone Number"),
          backgroundColor: Color(0XFF00A884),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OtpScreen(phoneNumber: phoneNumber,),
        ),
      );
    }
  }
}
