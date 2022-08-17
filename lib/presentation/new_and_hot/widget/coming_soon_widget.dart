import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

import '../../home/widget/custom_button_widget.dart';

const imageUrltemp =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/iQlJyRecJeGGzQGT2rEcyAgz89F.jpg';
class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "FEB",
                style: TextStyle(fontSize: 16, color: kGray),
              ),
              Text(
                "11",
                style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Image.network(
                      imageUrltemp,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black.withOpacity(0.5),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.volume_off,
                              size: 18,
                            ))),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Purple Hearts",
                      style: TextStyle(
                          letterSpacing: -3,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Row(
                      children: const [
                        CustomButtonWidget(
                          icon: Icons.notifications,
                          title: "Remind me",
                          iconSize: 20,
                          textSize: 12,
                          letterSpacingtext: 0,
                        ),
                        kWidth,
                        CustomButtonWidget(
                          icon: Icons.info,
                          title: "Info",
                          iconSize: 20,
                          textSize: 12,
                        ),
                        kWidth
                      ],
                    ),
                  ],
                ),
              ),
              kHeight,
              const Text("coming on Friday"),
              kHeight,
              const Text(
                "Purple Hearts",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kHeight,
              const Text(
                  "An aspiring musician agrees to\na marriage of convenience with a soon-to-deploy Marine, but a tragedy soon turns their fake relationship all too real.",
                  style: TextStyle(color: kGray, fontSize: 15))
            ],
          ),
        ),
      ],
    );
  }
}
