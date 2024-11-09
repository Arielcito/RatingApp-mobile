import 'package:flutter/material.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(Icons.list, color: Colors.blue),
            onPressed: () {
              Navigator.pushNamed(context, '/channels');
            },
          ),
          /*IconButton(
            icon: const Icon(Icons.replay_5, color: Colors.blue),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.blue,
              size: 50,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.forward_5, color: Colors.blue),
            onPressed: () {},
          ),*/
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.blue),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
