import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Image_page.dart';
import 'Text_page.dart';
import 'Video_page.dart';

class Bottom_Navigation extends StatefulWidget {
  const Bottom_Navigation({super.key});

  @override
  State<Bottom_Navigation> createState() => _Bottom_NavigationState();
}

class _Bottom_NavigationState extends State<Bottom_Navigation> {
  int _selectedindex = 0;
  final screens = [const Simple(),const Posts(),VideoPlayerApp()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(CupertinoIcons.text_cursor),
          Icon(CupertinoIcons.photo),
          Icon(CupertinoIcons.video_camera_solid),
        ],
        index: _selectedindex,
        onTap: (index) {
          setState(() {
            _selectedindex = index;
          });
        },
        backgroundColor: Colors.black12,
        animationCurve: Curves.ease,
        color: Colors.grey,
        animationDuration:  const Duration(milliseconds: 280),
        height: 60,
        buttonBackgroundColor: Colors.white,
      ),
      body: screens[_selectedindex],
    );
  }
}
