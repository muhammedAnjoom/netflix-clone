import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}