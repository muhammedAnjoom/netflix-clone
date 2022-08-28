import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/description/description_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'widget/movie_details.dart';
import 'widget/round_text_widget.dart';

class ScreenDescription extends StatelessWidget {
  const ScreenDescription({
    Key? key,
    required this.id,
  }) : super(key: key);
  final int id;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<DescriptionBloc>(context).add(LoadDataMovie(id: id));
    });
    return Scaffold(
      body: BlocBuilder<DescriptionBloc, DescriptionState>(
        builder: (context, state) {
          final imageUrl = "$imageAppendUrl${state.posterPath}";
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.isError) {
            return const Center(
              child: Text(
                "error movie description",
              ),
            );
          }
          return ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    foregroundDecoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.black,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.black
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0, 0, 0.8, 1])),
                    child: Stack(
                      children: [
                        Image(
                          height: 480,
                          width: double.infinity,
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.cover,
                          errorBuilder: (BuildContext ctx, Object expection,
                              StackTrace? stackTrace) {
                            return const Text("error");
                          },
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: kwhiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  kHeight20,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const RoundText(
                          text: "18+",
                        ),
                        kWidth,
                        RoundText(text: state.status),
                        kWidth,
                        RoundText(text: "⭐ ${state.voteAverage}"),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_circle_outline_sharp,
                              size: 30,
                              color: kwhiteColor,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.telegram_rounded,
                              color: kwhiteColor,
                              size: 30,
                            ))
                      ],
                    ),
                  ),
                  MovieTitleAndOveriew(
                    title: state.title,
                    overView: state.overview,
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}



