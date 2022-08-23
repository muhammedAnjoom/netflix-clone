import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FastLaughVidoPlayer extends StatefulWidget {
  final String videoUrl;
  bool isMuiscOn = true;
  final void Function(bool isPlaying) onStateChanged;
  FastLaughVidoPlayer({
    super.key,
    required this.videoUrl,
    required this.onStateChanged,
  });

  @override
  _FastLaughVidoPlayerState createState() => _FastLaughVidoPlayerState();
}

class _FastLaughVidoPlayerState extends State<FastLaughVidoPlayer> {
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _videoPlayerController.initialize().then((value) {
      setState(() {
        _videoPlayerController.play();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_videoPlayerController.value.isPlaying) {
            _videoPlayerController.pause();
          } else {
            _videoPlayerController.play();
          }
          // _videoPlayerController.setVolume(0.0);
        });
      },
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: _videoPlayerController.value.isInitialized
            ? AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: Stack(
                  children: [
                    VideoPlayer(
                      _videoPlayerController,
                    ),
                    _videoPlayerController.value.isPlaying
                        ? Container(
                            width: double.infinity,
                            height: double.infinity,
                            color: Colors.transparent,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        Colors.black.withOpacity(0.5),
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (widget.isMuiscOn != true) {
                                              _videoPlayerController
                                                  .setVolume(1.0);
                                              widget.isMuiscOn = true;
                                            } else {
                                              _videoPlayerController
                                                  .setVolume(0.0);
                                              widget.isMuiscOn = false;
                                            }
                                          });
                                          print("button");
                                        },
                                        icon: Icon(
                                          widget.isMuiscOn == true
                                              ? Icons.volume_up
                                              : Icons.volume_off,
                                          size: 30,
                                        ))),
                              ),
                            ),
                          )
                        : Container(
                            width: double.infinity,
                            height: double.infinity,
                            color: Colors.black.withOpacity(0.5),
                            child: const Center(
                              child: Icon(
                                Icons.pause_circle_outline,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                          ),
                  ],
                ),
              )
            : const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ),
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
