import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

import '../../../core/colors/colors.dart';
import '../../home/widget/custom_button_widget.dart';
import '../../widget/video_widget.dart';

class EveryOnesWatchingWidget extends StatelessWidget {
  final String posterPath;
  final String movieName;
  final String decription;
  const EveryOnesWatchingWidget({
    Key? key,
    required this.posterPath,
    required this.movieName,
    required this.decription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Beast",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        kHeight,
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
              "A recently widowed man and his two teenage daughters travel to a game reserve in South Africa.",
              style: TextStyle(color: kGray, fontSize: 15)),
        ),
        kHeight50,
        const VideoWidget(
          imageUrl: imageUrltemp2,
        ),
        kHeight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              icon: Icons.share,
              title: "share",
              iconSize: 35,
              textSize: 16,
              letterSpacingtext: 0,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: "My List",
              iconSize: 35,
              textSize: 16,
              letterSpacingtext: 0,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: "Play",
              iconSize: 35,
              textSize: 16,
              letterSpacingtext: 0,
            ),
            kWidth
          ],
        )
      ],
    );
  }
}
