import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/onStartPage/widget/screen_bottom_section.dart';

import 'screen_appBar_top.dart';

class ScreenComman extends StatelessWidget {
  const ScreenComman({
    Key? key,
    required this.imageAssets,
    required this.title,
  }) : super(key: key);

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AppBarTop(),
          kHeight20,
          Image.asset(imageAssets),
           BottomSection(
            title: title,
          )
        ],
      ),
    );
  }
}
