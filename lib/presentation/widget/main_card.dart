import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/decriptions/widget/Screen_decription.dart';

import '../../application/description/description_bloc.dart';

class MainCard extends StatelessWidget {
  final String imageUrl;
  const MainCard({
    Key? key,
    required this.imageUrl,
    required this.id,
  }) : super(key: key);
  final int id;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () {
          print("movie id $id");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => ScreenDescription(
                id: id,
              ),
            ),
          );
        },
        child: Container(
          width: 130,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: kRadius10,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
      ),
    );
  }
}
