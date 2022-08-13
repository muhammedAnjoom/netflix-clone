import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widget/search_title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/qd4dZuYRmgJtBQUm1E8zclAZXE4.jpg';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleText(title: "Movies & TV"),
        kHeight20,
        Expanded(
            child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 3,
          childAspectRatio: 1 / 1.4,
          shrinkWrap: true,
          children: List.generate(20, (index) {
            return const MainCard();
          }),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          image: const DecorationImage(
              image: NetworkImage(imageUrl), fit: BoxFit.fill)),
    );
  }
}
