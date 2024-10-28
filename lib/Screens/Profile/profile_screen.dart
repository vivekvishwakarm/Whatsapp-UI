import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_ui/Screens/Home/home_screen.dart';
import 'package:whatsapp_ui/Widgets/ui_helper.dart';
import 'dart:io';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? pickImage;
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: UiHelper.customText(
          text: "Profile Info",
          height: 20,
          color: const Color(0XFF00A884),
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Center(
          child: Column(
            children: [
              UiHelper.customText(
                  text: "Please provide your name and an optional", height: 16),
              UiHelper.customText(text: "Profile photo", height: 16),
              const SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: () {
                  _openBottom(context);
                },
                child: pickImage == null
                    ? CircleAvatar(
                        radius: 80,
                        backgroundColor: const Color(0XFFD9D9D9),
                        child: Image.asset(
                          "assets/images/photo-camera 1.png",
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      )
                    : CircleAvatar(
                        radius: 80,
                        backgroundImage: FileImage(pickImage!),
                      ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      controller: nameController,
                      decoration: const InputDecoration(
                          hintText: "Enter your name here",
                          hintStyle: TextStyle(
                            color: Color(0XFF5E5E5E),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0XFF05AA82),
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF05AA82))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0XFF05AA82)))),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset("assets/images/happy-face 1.png")
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: UiHelper.customButton(
          callback: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
          buttonName: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottom(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        _pickImage(ImageSource.camera);
                      },
                      icon: const Icon(
                        Icons.camera_alt,
                        size: 80,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _pickImage(ImageSource.gallery);
                      },
                      icon: const Icon(
                        Icons.image,
                        size: 80,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  _pickImage(ImageSource imagesSource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesSource);
      if (photo == null) return;
      final tempPhoto = File(photo.path);
      setState(() {
        pickImage = tempPhoto;
      });
    } catch (e) {
      return ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
}
