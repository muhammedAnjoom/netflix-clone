import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/downloads/downloads_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widget/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);

  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
          ),
        ),
        body: ListView.separated(
            padding: EdgeInsets.all(5),
            itemBuilder: ((context, index) {
              return _widgetList[index];
            }),
            separatorBuilder: ((context, index) {
              return const SizedBox(
                height: 15,
              );
            }),
            itemCount: _widgetList.length));
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   BlocProvider.of<DownloadsBloc>(context).add(
    //     const DownloadsEvent.getDownloadsImage(),
    //   );
    // });
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kwhiteColor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          "We will downloads a personalised of\nmovies and shows for you, so there\nis always somethig to watch on\nyour devices.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            // print(state.downloads![0].posterPath);
            return SizedBox(
              width: size.width,
              height: size.width,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: state.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.withOpacity(0.5),
                            radius: size.width * 0.37,
                          ),
                          DownloadsImageWidget(
                            imageList:
                                "$imageAppendUrl${state.downloads[0].posterPath}",
                            margin: const EdgeInsets.only(
                                left: 140, bottom: 10, top: 45),
                            angle: 15,
                            size: Size(size.width * 0.4, size.width * 0.58),
                          ),
                          DownloadsImageWidget(
                              imageList:
                                  '$imageAppendUrl${state.downloads[1].posterPath}',
                              margin: const EdgeInsets.only(
                                  right: 140, bottom: 10, top: 45),
                              angle: -15,
                              size: Size(size.width * 0.4, size.width * 0.58)),
                          DownloadsImageWidget(
                            imageList:
                                '$imageAppendUrl${state.downloads[2].posterPath}',
                            margin: const EdgeInsets.only(
                                left: 0, bottom: 20, top: 20),
                            size: Size(
                              size.width * 0.45,
                              size.width * 0.65,
                            ),
                            radius: 12,
                          )
                        ],
                      ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kButtonColorBlue,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Set up",
                style: TextStyle(
                    color: kwhiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          color: kButtonColorWhite,
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Text(
            "See what you can download",
            style: TextStyle(
                color: kBlackColor, fontWeight: FontWeight.bold, fontSize: 14),
          ),
        )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kWidth,
        Icon(
          Icons.settings,
          color: kwhiteColor,
        ),
        kWidth,
        Text("Smart Downloads"),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  DownloadsImageWidget(
      {Key? key,
      required this.imageList,
      this.angle = 0,
      required this.margin,
      required this.size,
      this.radius = 10})
      : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 100,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(imageList), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
    );
  }
}
