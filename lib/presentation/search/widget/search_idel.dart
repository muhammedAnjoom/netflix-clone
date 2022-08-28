import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/decriptions/Screen_decription.dart';
import 'package:netflix_clone/presentation/search/widget/search_title.dart';

class SearchIdelWidget extends StatelessWidget {
  const SearchIdelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleText(
          title: "Top Seraches",
        ),
        kHeight20,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.isError) {
                return const Center(child: Text("Error while getting data"));
              } else if (state.ideleList.isEmpty) {
                return const Center(child: Text("List is empty"));
              }
              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  final movie = state.ideleList[index];
                  return TopSearchItemTile(
                    id: movie.id!,
                    title: movie.title ?? 'No title provider',
                    imageUrl: '$imageAppendUrl${movie.posterPath}',
                  );
                },
                separatorBuilder: (ctx, index) => kHeight20,
                itemCount: state.ideleList.length,
              );
            },
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.id,
  }) : super(key: key);

  final int id;
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => ScreenDescription(id: id),
              ),
            );
          },
          child: Container(
            width: screenwidth * 0.35,
            height: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: NetworkImage(imageUrl), fit: BoxFit.cover)),
          ),
        ),
        kWidth,
        Expanded(
            child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        )),
        const CircleAvatar(
          backgroundColor: kwhiteColor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kBlackColor,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kwhiteColor,
            ),
          ),
        )
      ],
    );
  }
}
