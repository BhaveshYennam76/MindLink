import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

import 'Image_page.dart';

class VideoPlayerApp extends StatefulWidget {
  @override
  _VideoPlayerAppState createState() => _VideoPlayerAppState();
}

class _VideoPlayerAppState extends State<VideoPlayerApp> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri(path: 'https://www.pexels.com/video/scenic-horseback-riding-in-mountain-landscape-28840692/')
        );
    _controller!.initialize();
    _controller!.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
                height: 350,
                width: 500,
                child: VideoPlayer(_controller!)),
          ),
        const IconButton(onPressed: shareContent2, icon:Icon(Icons.share))
      ],),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }
}
void shareContent2() {
  Share.shareUri(Uri(path: "https://github.com/BhaveshYennam76"));
}
