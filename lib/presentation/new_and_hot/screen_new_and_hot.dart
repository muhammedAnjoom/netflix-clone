import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widget/custom_button_widget.dart';
import 'package:netflix_clone/presentation/widget/app_bar_widget.dart';
import 'package:netflix_clone/presentation/widget/video_widget.dart';

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
          children: [_buildComingSoon(), _buildEveryonesWatching()],
        ),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 15),
      itemBuilder: (BuildContext context, index) => const ComingSoonWidget(),
      itemCount: 5,
    );
  }

  Widget _buildEveryonesWatching() {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, index) =>
            const EveryOnesWatchingWidget());
  }
}
