import 'package:flutter/material.dart';

import '../../../Widgets/ui_helper.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  var callContent = [
    {
      "name": "vivek",
      "img":
          "https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg",
      "calltime": "15 min ago",
    },
    {
      "name": "vivek",
      "img":
          "https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg",
      "calltime": "15 min ago",
    },
    {
      "name": "vivek",
      "img":
          "https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg",
      "calltime": "15 min ago",
    },
    {
      "name": "vivek",
      "img":
          "https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg",
      "calltime": "15 min ago",
    },
    {
      "name": "vivek",
      "img":
          "https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg",
      "calltime": "15 min ago",
    },
    {
      "name": "vivek",
      "img":
          "https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg",
      "calltime": "15 min ago",
    },
    {
      "name": "vivek",
      "img":
          "https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg",
      "calltime": "15 min ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            UiHelper.customText(text: "Calls", height: 18),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: callContent.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage:
                      NetworkImage(callContent[index]["img"].toString()),
                ),
                title: UiHelper.customText(
                    text: callContent[index]["name"].toString(), height: 18),
                subtitle: UiHelper.customText(
                    text: callContent[index]["calltime"].toString(),
                    height: 16),
                trailing: const Icon(Icons.phone_callback_rounded, color: Colors.redAccent,),
              );
            },
          ),
        ),
      ],
    ));
  }
}
