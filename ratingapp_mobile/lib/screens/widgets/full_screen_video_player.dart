import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/main_screen_widgets/main_screen_banner_widget.dart';
import 'package:ratingapp_mobile/screens/widgets/main_bottom_bar_widget.dart';
import 'package:video_player/video_player.dart';

class FullScreenVideoPlayer extends StatelessWidget {
  final VideoPlayerController controller;

  const FullScreenVideoPlayer({Key? key, required this.controller})
      : super(key: key);

  void _rewind() {
    final newPosition = controller.value.position - const Duration(seconds: 5);
    controller
        .seekTo(newPosition >= Duration.zero ? newPosition : Duration.zero);
  }

  void _fastForward() {
    final maxPosition = controller.value.duration;
    final newPosition = controller.value.position + const Duration(seconds: 5);
    controller.seekTo(newPosition <= maxPosition ? newPosition : maxPosition);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          const MainScreenBannerWidget(),
          const SizedBox(height: 30),
          const Text(
            'Telefé',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  VideoPlayer(controller),
                  if (controller.value.isInitialized)
                    Positioned(
                      bottom: 80,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.replay_5,
                                color: Colors.white, size: 24),
                            onPressed: _rewind,
                          ),
                          const SizedBox(width: 25),
                          ValueListenableBuilder(
                            valueListenable: controller,
                            builder: (context, VideoPlayerValue value, child) {
                              return IconButton(
                                icon: Icon(
                                  value.isPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onPressed: () {
                                  value.isPlaying
                                      ? controller.pause()
                                      : controller.play();
                                },
                              );
                            },
                          ),
                          const SizedBox(width: 25),
                          IconButton(
                            icon: const Icon(Icons.forward_5,
                                color: Colors.white, size: 24),
                            onPressed: _fastForward,
                          ),
                        ],
                      ),
                    ),
                  if (controller.value.isInitialized)
                    Positioned(
                      bottom: 20,
                      left: 16,
                      right: 16,
                      child: VideoProgressIndicator(
                        controller,
                        allowScrubbing: true,
                        colors: const VideoProgressColors(
                          playedColor: Colors.red,
                          bufferedColor: Colors.grey,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.list, color: Colors.white),
                  onPressed: () {
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.replay_5, color: Colors.white),
                  onPressed: _rewind,
                ),
                ValueListenableBuilder(
                  valueListenable: controller,
                  builder: (context, VideoPlayerValue value, child) {
                    return IconButton(
                      icon: Icon(
                        value.isPlaying ? Icons.pause : Icons.play_arrow,
                        color: Colors.white,
                        size: 50,
                      ),
                      onPressed: () {
                        value.isPlaying
                            ? controller.pause()
                            : controller.play();
                      },
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.forward_5, color: Colors.white),
                  onPressed: _fastForward,
                ),
                IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.white),
                  onPressed: () {
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MainBottomBarWidget(currentIndex: 2),
    );
  }
}
