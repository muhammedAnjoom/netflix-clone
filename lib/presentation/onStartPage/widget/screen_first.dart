import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/main_page/widgets/screen_main_page.dart';

import 'screen_bottom_section.dart';

class ScreenFirst extends StatelessWidget {
  const ScreenFirst({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: const AssetImage('assets/images/image1.png'),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              ),
            ),
          ),
        ),
         BottomSection(
          title: title,
        ),
      ],
    );
  }
}
