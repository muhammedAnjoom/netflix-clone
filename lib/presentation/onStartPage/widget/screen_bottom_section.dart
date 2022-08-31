import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../main_page/widgets/screen_main_page.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    Key? key, required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
         Text(
          title,
          style:const TextStyle(
            letterSpacing: 2,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight20,
        const Text(
          "              Netflix is a subscription-based\n            streaming service that allows our\n    members to watch TV shows and movies...",
          style: TextStyle(
            fontSize: 16,
            color: kGray,
          ),
        ),
        kHeight20,
        Container(
          height: 50,
          margin:const  EdgeInsets.all(25),
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
