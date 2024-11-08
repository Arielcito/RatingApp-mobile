import 'package:flutter/material.dart';

class PlayerContainer extends StatelessWidget {
  final double size;

  const PlayerContainer({required this.size, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
