import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widget/custom_button_widget.dart';
import 'package:netflix_clone/presentation/widget/app_bar_widget.dart';
import 'package:netflix_clone/presentation/widget/video_widget.dart';

import '../../application/hot_and_new/hot_and_new_bloc.dart';
import 'widget/coming_soon_widget.dart';
import 'widget/everyones_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              "New & Hot",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            actions: [
              const Icon(
                Icons.cast,
                size: 30,
                color: kwhiteColor,
              ),
              kWidth,
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                color: Colors.blue,
                width: 30,
                height: 30,
              ),
              kWidth,
            ],
            bottom: TabBar(
              labelColor: kBlackColor,
              isScrollable: true,
              unselectedLabelColor: kwhiteColor,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                color: kwhiteColor,
                borderRadius: kRadius30,
              ),
              tabs: const [
                Tab(
                  text: "🍿Coming Soon",
                ),
                Tab(
                  text: "👀 Everyone's Watching",
                )
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            const ComingSoonWidgetList(
              key: Key('coming_soon'),
            ),
            _buildEveryonesWatching()
          ],
        ),
      ),
    );
  }

  // Widget _buildComingSoon() {
  //   return ListView.builder(
  //     padding: const EdgeInsets.symmetric(vertical: 15),
  //     itemBuilder: (BuildContext context, index) => const ComingSoonWidget(),
  //     itemCount: 5,
  //   );
  // }

  Widget _buildEveryonesWatching() {
    return SizedBox();
  }
}

class ComingSoonWidgetList extends StatelessWidget {
  const ComingSoonWidgetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(const LoadDataInComingSoon());
    });
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        } else if (state.hasError) {
          return const Center(
            child: Text(
              "error while loading coming soon list",
            ),
          );
        } else if (state.comingSoonList.isEmpty) {
          return const Center(
            child: Text(
              "while loading coming soon is empty",
            ),
          );
        } else {
          return ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 15),
            itemBuilder: (BuildContext context, index) {
              final movie = state.comingSoonList[index];
              if (movie.id == null) {
                return const SizedBox();
              }
              return ComingSoonWidget(
                id: movie.id.toString(),
                month: "MAR",
                day: "28",
                posterPath: '$imageAppendUrl${movie.posterPath}',
                movieName: movie.originalTitle ?? 'No title',
                decription: movie.overview ?? 'no decription',
              );
            },
            itemCount: state.comingSoonList.length,
          );
        }
      },
    );
  }
}
