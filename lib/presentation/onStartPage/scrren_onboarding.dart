
import 'package:flutter/material.dart';

import 'widget/screen_first.dart';

class ScreenOnStart extends StatefulWidget {
  const ScreenOnStart({ Key? key }) : super(key: key);

  @override
  ScreenOnStartState createState() => ScreenOnStartState();
}

class ScreenOnStartState extends State<ScreenOnStart> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children:  [
          ScreenFirst(
          ),
          // ScreenFirst(),
        ],
      )
    );
  }
}