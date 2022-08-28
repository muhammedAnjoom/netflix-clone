import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';

class MovieTitleAndOveriew extends StatelessWidget {
  const MovieTitleAndOveriew({
    Key? key, required this.title, required this.overView,
  }) : super(key: key);
  final String title;
  final String overView;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold),
          ),
          kHeight,
          ReadMoreText(
            overView,
            trimLines: 3,
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: "More",
            trimExpandedText: "Less",
            style:const TextStyle(
              fontSize: 16,
              color: kGray
            ),
            moreStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            lessStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}