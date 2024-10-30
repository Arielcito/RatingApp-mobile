import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/screens/main_screen_widgets/main_screen_banner_widget.dart';
import 'package:ratingapp_mobile/screens/widgets/main_bottom_bar_widget.dart';
import 'package:video_player/video_player.dart';

class FullScreenVideoPlayer extends StatefulWidget {
  final VideoPlayerController controller;

  const FullScreenVideoPlayer({Key? key, required this.controller})
      : super(key: key);

  @override
  _FullScreenVideoPlayerState createState() => _FullScreenVideoPlayerState();
}

class _FullScreenVideoPlayerState extends State<FullScreenVideoPlayer> {
  bool _controlsVisible = false;
  bool _videoDimmed = false;
  bool _listContainerVisible = false; // Estado para el contenedor gris

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

  void _toggleListContainer() {
    setState(() {
      _listContainerVisible = !_listContainerVisible; // Cambia la visibilidad del contenedor
    });
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.favorite, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.emoji_events_outlined, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.cast, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
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
                      child: VideoPlayer(widget.controller),
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
            const SizedBox(height: 30),
            // Contenedor gris que aparece debajo del Spacer
            if (_listContainerVisible)
              Container(
                color: Colors.grey,
                height: 100, // Altura del contenedor gris
                child: const Center(
                  child: Text(
                    'Contenido de la lista',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.list, color: Colors.white),
              onPressed: _toggleListContainer, // Llama al método para alternar la visibilidad
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
      ),
    );
  }
}
