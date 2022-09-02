import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/onStartPage/widget/screen_second.dart';
import 'package:netflix_clone/presentation/onStartPage/widget/sign_up_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScreenOnStart extends StatefulWidget {
  const ScreenOnStart({Key? key}) : super(key: key);

  @override
  ScreenOnStartState createState() => ScreenOnStartState();
}

class ScreenOnStartState extends State<ScreenOnStart> {


  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: const [
                ScreenComman(
                  title: "Watch on any Device",
                  imageAssets: 'assets/images/image2.png',
                ),
                ScreenComman(
                  title: "Download and Go",
                  imageAssets: 'assets/images/image3.png',
                ),
                ScreenComman(
                  title: "No pesky Contracts",
                  imageAssets: 'assets/images/image4.png',
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: const SwapEffect(
                  activeDotColor: Color.fromARGB(255, 216, 14, 0),
                  dotHeight: 6,
                  dotWidth: 6,
                ),
              ),
              const SignUpWidget()
            ],
          ),
        ],
      ),
    );
  }
}
