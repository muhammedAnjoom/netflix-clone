
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widget/search_idel.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key, required this.imageUrl,
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
    );
  }
}
