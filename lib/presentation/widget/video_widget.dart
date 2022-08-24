import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widget/search_idel.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            loadingBuilder:
                (BuildContext _, Widget child, ImageChunkEvent? progress) {
              if (progress == null) {
                return child;
              } else {
                return const Center(
                    child: CircularProgressIndicator(
                  strokeWidth: 2,
                ));
              }
            },
            errorBuilder: (BuildContext _, Object a, StackTrace? trace) {
              return const Center(
                  child: Icon(
                Icons.wifi,
                color: kwhiteColor,
              ));
            },
          ),
        ),
      ],
    );
  }
}
