import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/main_page/widgets/screen_main_page.dart';

class ScreenFirst extends StatelessWidget {
  const ScreenFirst({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: const AssetImage('assets/images/image1.png'),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 200, right: 10),
          child: Text(
            "Trying to Join Netflix",
            style: TextStyle(
              letterSpacing: 2,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 110, right: 10),
          child: Text(
            "              Netflix is a subscription-based\n            streaming service that allows our\n    members to watch TV shows and movies...",
            style: TextStyle(
              fontSize: 16,
              color: kGray,
            ),
          ),
        ),
        Container(
          height: 50,
          margin: const EdgeInsets.all(25),
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 216, 14, 0),
              borderRadius: BorderRadius.circular(5)),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => ScreenMainPage(),
                ),
              );
            },
            child: const Text(
              "SIGN OUT",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: kwhiteColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
