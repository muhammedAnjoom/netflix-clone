import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index, required this.imageUrl})
      : super(key: key);
  final String imageUrl;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 40,
                height: 200,
              ),
              Container(
                width: 130,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: kRadius10,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(imageUrl),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 12,
            bottom: -30,
            child: BorderedText(
              strokeWidth: 10.0,
              strokeColor: kwhiteColor,
              child: Text(
                "${index + 1}",
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 150,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
