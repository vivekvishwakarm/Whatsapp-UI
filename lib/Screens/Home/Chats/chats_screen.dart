import 'package:flutter/material.dart';
import 'package:whatsapp_ui/DataBase/raw_data.dart';
import 'package:whatsapp_ui/Screens/Home/Contacts/contact_screen.dart';
import 'package:whatsapp_ui/Widgets/ui_helper.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  RawData rawData = RawData();

  @override
  Widget build(BuildContext context) {
    // Ensure rawData.arrContent is not null
    var arrContent = RawData.arrContent??[]; // Fallback to empty list if null

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: arrContent.length, // Using arrContent correctly
              itemBuilder: (context, index) {
                var currentItem = arrContent[index]; // Assign current item

                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        AssetImage(currentItem["image"].toString()),
                  ),
                  title: UiHelper.customText(
                    text: currentItem["name"].toString(),
                    height: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: UiHelper.customText(
                    text: currentItem["lstmsg"].toString(),
                    height: 13,
                    color: const Color(0XFF889095),
                  ),
                  trailing: Column(
                    children: [
                      UiHelper.customText(
                        text: currentItem["time"].toString(),
                        height: 12,
                        color: const Color(0XFF026500),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: const Color(0XFF036A01),
                        child: UiHelper.customText(
                          text: currentItem["msg"].toString(),
                          height: 10,
                          color: const Color(0XFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ContactScreen()));
        },
        child: CircleAvatar(
          radius: 35,
          backgroundColor: const Color(0XFF008665),
          child: Image.asset("assets/images/mode_comment_black_24dp 1.png"),
        ),
      ),
    );
    //
  }
}
