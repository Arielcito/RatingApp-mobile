import 'package:flutter/material.dart';

class TopStack extends StatelessWidget {
  const TopStack({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/login_screen/login_top_stack.png',
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
