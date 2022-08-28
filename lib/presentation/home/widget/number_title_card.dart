import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widget/number_card.dart';
import 'package:netflix_clone/presentation/widget/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key,
    required this.title,
    required this.posterList,
  }) : super(key: key);

  final List<String> posterList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  10,
                  (index) => NumberCard(
                        imageUrl: posterList[index],
                        index: index,
                      ))),
        )
      ],
    );
  }
}
