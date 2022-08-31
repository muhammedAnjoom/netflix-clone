import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../main_page/widgets/screen_main_page.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
