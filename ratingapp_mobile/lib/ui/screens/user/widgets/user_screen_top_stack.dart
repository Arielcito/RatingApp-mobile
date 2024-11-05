import 'package:flutter/material.dart';


class UserScreenTopStack extends StatelessWidget {
  const UserScreenTopStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dynamicToolbarHeight =
        kToolbarHeight + MediaQuery.of(context).padding.top + 20;

    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/user_screen/Ellipse 51.png',
            alignment: Alignment.topCenter,
            fit: BoxFit.none,
          ),
        ),

        // Falsa barra para posicionar la ellipse de arriba
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: dynamicToolbarHeight,
            padding: const EdgeInsets.only(left: 8),
            color: Colors.transparent,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),

        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: dynamicToolbarHeight),
            child: const SizedBox(
              width: 235,
              height: 235,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/sample_pfp.jpg'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

