
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 130,
        height: 250,
        decoration:  BoxDecoration(
          borderRadius: kRadius10,
          image:const  DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage("https://www.themoviedb.org/t/p/w600_and_h900_bestv2/u3bZgnGQ9T01sWNhyveQz0wH0Hl.jpg"),
          ),
        ),
      ),
    );
  }
}