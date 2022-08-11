import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class AppBarWidget extends StatelessWidget {
 const  AppBarWidget({Key? key, required this.title}) : super(key: key);
 final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
         Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          size: 30,
          color: kwhiteColor,
        ),
        kWidth,
        Container(
          color: Colors.blue,
          width: 30,
          height: 30,
        ),
        kWidth
      ],
    );
  }
}
