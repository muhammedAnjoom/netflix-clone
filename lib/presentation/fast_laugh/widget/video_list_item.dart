import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w250_and_h141_face/84XPpjGvxNyExjSuLQe0SzioErt.jpg';
class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // left side
                CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.volume_off,size: 30,)))
                //  right side
                ,
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                    ),
                    VideoActionsWidget(
                        icon: Icons.emoji_emotions, title: "LOL"),
                    VideoActionsWidget(icon: Icons.add, title: "My List"),
                    VideoActionsWidget(icon: Icons.share, title: "Share"),
                    VideoActionsWidget(icon: Icons.play_arrow, title: "Play")
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidget({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
           Icon(
            icon,
            color: kwhiteColor,
            size: 30,
          ),
          Text(
            title,
            style:const TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
