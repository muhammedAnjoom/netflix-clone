import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

import '../../home/widget/custom_button_widget.dart';
import '../../widget/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String decription;
  const ComingSoonWidget({
    Key? key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterPath,
    required this.movieName,
    required this.decription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                month,
                style: const TextStyle(fontSize: 16, color: kGray),
              ),
              Text(
                day,
                style: const TextStyle(
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(
                imageUrl: posterPath,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        movieName,
                        softWrap: false,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            letterSpacing: -3,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    // const Spacer(),
                    Expanded(
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          CustomButtonWidget(
                            icon: Icons.notifications,
                            title: "Remind me",
                            iconSize: 20,
                            textSize: 12,
                            letterSpacingtext: 0,
                          ),
                          kWidth,
                          CustomButtonWidget(
                            icon: Icons.info,
                            title: "Info",
                            iconSize: 20,
                            textSize: 12,
                          ),
                          kWidth
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              kHeight,
              const Text("coming on Friday"),
              kHeight,
              Text(
                movieName,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kHeight,
              Text(decription,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: kGray, fontSize: 15))
            ],
          ),
        ),
      ],
    );
  }
}
