import 'package:flutter/material.dart';

import '../../../Widgets/ui_helper.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  var statusContent = [
    {
      "img":
          "https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg",
      "name": "Vivek",
      "statutiming": "15 min ago",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg",
      "name": "Vivek",
      "statutiming": "15 min ago",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg",
      "name": "Vivek",
      "statutiming": "15 min ago",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg",
      "name": "Vivek",
      "statutiming": "15 min ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: UiHelper.customText(text: "Status", height: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      "assets/images/persion.jpg",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 10,
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: UiHelper.customText(text: "My Status", height: 20),
            subtitle: UiHelper.customText(
                text: "Tab to add status update", height: 15),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.customText(text: "Recent Updates", height: 15),
                const Icon(Icons.arrow_drop_down_outlined,
                    color: Color(0XFF5E5E5E))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: statusContent.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          NetworkImage(statusContent[index]["img"].toString()),
                    ),
                    title: UiHelper.customText(
                        text: statusContent[index]["name"].toString(),
                        height: 15),
                    subtitle: UiHelper.customText(text: statusContent[index]["statutiming"].toString(), height: 15),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
