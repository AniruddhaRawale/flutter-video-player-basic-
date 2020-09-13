import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'chewie_list_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ChewieListItem(
            videoPlayerController:VideoPlayerController.asset(
                "videos/temp.mp4",
      ),
            looping: true,
          ),
    ChewieListItem(
    videoPlayerController:VideoPlayerController.asset(
    //if you add directly link of any internet video it will play it as well
      //just change .asset to network
    "videos/temp2.mp4",
    ),)
        ],
      ),
    );
  }
}

