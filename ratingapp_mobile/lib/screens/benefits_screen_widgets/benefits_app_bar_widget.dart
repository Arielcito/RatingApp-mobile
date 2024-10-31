import 'package:flutter/material.dart';

class BenefitsAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const BenefitsAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
      title: const Text('BENEFICIOS',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Poppins",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
