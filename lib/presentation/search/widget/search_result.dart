import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/fast_laugh/widget/video_list_item.dart';
import 'package:netflix_clone/presentation/search/widget/search_title.dart';

import '../../decriptions/Screen_decription.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleText(title: "Movies & TV"),
        kHeight20,
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 3,
              childAspectRatio: 1 / 1.4,
              shrinkWrap: true,
              children: List.generate(20, (index) {
                final movie = state.searchResultList[index];
                print(movie);
                return MainCard(
                  id: movie.id!,
                  imageUrl: movie.posterImageUrl,
                );
              }),
            );
          },
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageUrl;
  final int id;
  const MainCard({Key? key, required this.imageUrl, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (ctx) => ScreenDescription(
                      id: id,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
