import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/fast_laugh/widget/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context).add(
        const Initialize(),
      );
    });
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            BlocProvider.of<FastLaughBloc>(context).add(
              const Initialize(),
            );
          },
          child: BlocBuilder<FastLaughBloc, FastLaughState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('error while get data'),
                );
              } else if (state.videosList.isEmpty) {
                return const Center(
                  child: Text('error while get data'),
                );
              } else {
                return PageView(
                    scrollDirection: Axis.vertical,
                    children: List.generate(state.videosList.length, (index) {
                      return VideoListItemInheritedWidget(
                        widget: VideoListItem(
                          key: Key(index.toString()),
                          index: index,
                        ),
                        movieData: state.videosList[index],
                      );
                    }));
              }
            },
          ),
        ),
      ),
    );
  }
}
