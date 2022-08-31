import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/onStartPage/widget/screen_second.dart';

import 'widget/screen_first.dart';

class ScreenOnStart extends StatefulWidget {
  const ScreenOnStart({Key? key}) : super(key: key);

  @override
  ScreenOnStartState createState() => ScreenOnStartState();
}

class ScreenOnStartState extends State<ScreenOnStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children:const  [
        ScreenFirst(
          title: "Trying to Join Netflix",
        ),
        ScreenComman(
          title: "Watch on any Device",
          imageAssets: 'assets/images/image2.png',
        ),
        ScreenComman(
          title: "Download and Go",
          imageAssets: 'assets/images/image3.png',
        ),
        ScreenComman(
          title: "No pesky Contracts",
          imageAssets: 'assets/images/image4.png',
        ),
      ],
    ));
  }
}
