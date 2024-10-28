import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_ui/Widgets/ui_helper.dart';
import 'dart:io';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? pickImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                _openCamera(ImageSource.camera);
              },
              child: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.grey,
                size: 50,
              ),
            ),
          ),
          UiHelper.customText(
            text: "Pick your beautiful Image",
            height: 18,
            color: Colors.grey
          ),
        ],
      ),
    );
  }

  _openCamera(ImageSource imageSource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageSource);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickImage = tempImage;
      });
    } catch (e) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            UiHelper.customText(text: e.toString(), height: 16),
          ),
        ),
      );
    }
  }
}
