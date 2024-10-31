import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/main_screen_widgets/main_screen_banner_widget.dart';
import 'package:ratingapp_mobile/screens/widgets/secondary_app_bar_widget.dart';
import 'package:video_player/video_player.dart';

class FullScreenVideoPlayer extends StatefulWidget {
  final VideoPlayerController controller;

  const FullScreenVideoPlayer({super.key, required this.controller});

  @override
  _FullScreenVideoPlayerState createState() => _FullScreenVideoPlayerState();
}

class _FullScreenVideoPlayerState extends State<FullScreenVideoPlayer> {
  bool _controlsVisible = false;
  bool _videoDimmed = false;

  void _toggleControls() {
    setState(() {
      _controlsVisible = !_controlsVisible;
      _videoDimmed = _controlsVisible; // Dim the video when controls are shown
    });

    // Si los controles se muestran, oculta después de 3 segundos
    if (_controlsVisible) {
      Future.delayed(const Duration(seconds: 3), () {
        setState(() {
          _controlsVisible = false;
          _videoDimmed = false; // Restore video brightness
        });
      });
    }
  }

  void _rewind() {
    final newPosition =
        widget.controller.value.position - const Duration(seconds: 5);
    widget.controller
        .seekTo(newPosition >= Duration.zero ? newPosition : Duration.zero);
  }

  void _fastForward() {
    final maxPosition = widget.controller.value.duration;
    final newPosition =
        widget.controller.value.position + const Duration(seconds: 5);
    widget.controller
        .seekTo(newPosition <= maxPosition ? newPosition : maxPosition);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const SecondaryAppBarWidget(),
      body: GestureDetector(
        onTap: _toggleControls, // Detect taps to toggle controls
        child: Column(
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
                aspectRatio: widget.controller.value.aspectRatio,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Video player with dim effect
                    ColorFiltered(
                      colorFilter: _videoDimmed
                          ? const ColorFilter.mode(
                              Colors.black54, BlendMode.darken)
                          : const ColorFilter.mode(
                              Colors.transparent, BlendMode.darken),
                      child: SizedBox(
                        width: double.infinity,
                        child: VideoPlayer(widget.controller),
                      ),
                    ),
                    if (widget.controller.value.isInitialized &&
                        _controlsVisible) ...[
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
                              valueListenable: widget.controller,
                              builder:
                                  (context, VideoPlayerValue value, child) {
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
                                        ? widget.controller.pause()
                                        : widget.controller.play();
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
                      Positioned(
                        bottom: 20,
                        left: 16,
                        right: 16,
                        child: VideoProgressIndicator(
                          widget.controller,
                          allowScrubbing: true,
                          colors: const VideoProgressColors(
                            playedColor: Colors.red,
                            bufferedColor: Colors.grey,
                            backgroundColor: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Volverías a votar a Milei?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey,
                            ),
                            child: Row(
                              children: [
                                Radio<String>(
                                  value: 'si',
                                  groupValue: null,
                                  onChanged: (value) {},
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  activeColor: Colors.blue,
                                ),
                                const Text(
                                  'Sí',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),
                            child: Row(
                              children: [
                                Radio<String>(
                                  value: 'mega_si',
                                  groupValue: null,
                                  onChanged: (value) {},
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  activeColor: Colors.blue,
                                ),
                                const Text(
                                  'Recontra turbo mega sí',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _controls(),
    );
  }

  Widget _controls() {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(Icons.list, color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/channels');
            },
          ),
          IconButton(
            icon: const Icon(Icons.replay_5, color: Colors.white),
            onPressed: _rewind,
          ),
          ValueListenableBuilder(
            valueListenable: widget.controller,
            builder: (context, VideoPlayerValue value, child) {
              return IconButton(
                icon: Icon(
                  value.isPlaying ? Icons.pause : Icons.play_arrow,
                  color: Colors.white,
                  size: 50,
                ),
                onPressed: () {
                  value.isPlaying
                      ? widget.controller.pause()
                      : widget.controller.play();
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
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
