import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/decriptions/widget/Screen_decription.dart';
import 'package:netflix_clone/presentation/widget/main_card.dart';
import 'package:netflix_clone/presentation/widget/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    Key? key,
    required this.title,
    required this.posterList,
    required this.id,
  }) : super(key: key);
  final String title;
  final List<String> posterList;
  final List<int?> id;
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
                  posterList.length,
                  (index) => MainCard(
                        id: id[index]!,
                        imageUrl: posterList[index],
                      ))),
        )
      ],
    );
  }
}
