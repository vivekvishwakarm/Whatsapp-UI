import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Home/Calls/calls_screen.dart';
import 'package:whatsapp_ui/Screens/Home/Camera/camera_screen.dart';
import 'package:whatsapp_ui/Screens/Home/Chats/chats_screen.dart';
import 'package:whatsapp_ui/Screens/Home/Status/status_screen.dart';
import 'package:whatsapp_ui/Widgets/ui_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 80,
          title: UiHelper.customText(
              text: "Whatsapp", height: 20,color: Colors.white),
          // centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/Search.png"),
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(right: 10),
              child: Icon(Icons.more_vert),
            )
          ],
        ),
        body: const TabBarView(children: [
          CameraScreen(),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen()
        ]),
      ),
    );
  }
}
