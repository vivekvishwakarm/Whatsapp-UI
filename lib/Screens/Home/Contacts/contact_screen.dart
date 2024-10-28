import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widgets/ui_helper.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  var arrContent = [
    {
      "image": "assets/images/whatsapp1.png",
      "name": "Arun",
      "lstmsg": "Busy",
      "time": "05:44 am",
      "msg": "7",
    },
    {
      "image": "assets/images/happy-face 1.png",
      "name": "Arun1",
      "lstmsg": "Busy",
      "time": "05:44 am",
      "msg": "3",
    },
    {
      "image": "assets/images/boarding.png",
      "name": "Arun",
      "lstmsg": "Cool",
      "time": "05:24 am",
      "msg": "1",
    },
    {
      "image": "assets/images/whatsapp1.png",
      "name": "Arun",
      "lstmsg": "Busy",
      "time": "05:44 am",
      "msg": "7",
    },
    {
      "image": "assets/images/happy-face 1.png",
      "name": "Arun1",
      "lstmsg": "Cool",
      "time": "05:44 am",
      "msg": "3",
    },
    {
      "image": "assets/images/boarding.png",
      "name": "Arun",
      "lstmsg": "Busy",
      "time": "05:24 am",
      "msg": "1",
    },
    {
      "image": "assets/images/whatsapp1.png",
      "name": "Arun",
      "lstmsg": "Super",
      "time": "05:44 am",
      "msg": "7",
    },
    {
      "image": "assets/images/happy-face 1.png",
      "name": "Arun1",
      "lstmsg": "Cool",
      "time": "05:44 am",
      "msg": "3",
    },
    {
      "image": "assets/images/boarding.png",
      "name": "Arun",
      "lstmsg": "Hero",
      "time": "05:24 am",
      "msg": "1",
    },
    {
      "image": "assets/images/whatsapp1.png",
      "name": "Arun",
      "lstmsg": "🔥🔥🔥",
      "time": "05:44 am",
      "msg": "7",
    },
    {
      "image": "assets/images/happy-face 1.png",
      "name": "Arun1",
      "lstmsg": "Busy",
      "time": "05:44 am",
      "msg": "3",
    },
    {
      "image": "assets/images/boarding.png",
      "name": "Arun",
      "lstmsg": "🔥🔥🔥",
      "time": "05:24 am",
      "msg": "1",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.customText(
            text: "Select Contact", height: 20, color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/Search.png"),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.more_vert,
              size: 25,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: arrContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        AssetImage(arrContent[index]["image"].toString()),
                  ),
                  title: UiHelper.customText(
                      text: arrContent[index]["name"].toString(),
                      height: 14,
                      fontWeight: FontWeight.bold),
                  subtitle: UiHelper.customText(
                      text: arrContent[index]["lstmsg"].toString(),
                      height: 13,
                      color: const Color(0XFF889095)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
