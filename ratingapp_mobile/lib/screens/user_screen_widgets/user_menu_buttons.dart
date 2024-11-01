import 'package:flutter/material.dart';

class UserMenuButtons extends StatelessWidget {
  const UserMenuButtons({super.key});

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 18,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w400,
  );

  static final buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: const Color(0xff005986),
    foregroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(11)),
      side: BorderSide(color: Color(0xff00A5E0), width: 1),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    textStyle: buttonTextStyle,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: buttonStyle,
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text('Mis datos', style: buttonTextStyle),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: buttonStyle,
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text('Mi participación', style: buttonTextStyle),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: buttonStyle,
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text('Sugerencias', style: buttonTextStyle),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: buttonStyle,
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notificaciones', style: buttonTextStyle),
                  Text('1', style: buttonTextStyle),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: buttonStyle,
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Membresía', style: buttonTextStyle),
                  Text('Oro',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Poppins",
                        color: Colors.amber,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: buttonStyle,
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text('Términos y condiciones', style: buttonTextStyle),
            ),
          ),
        ),
      ],
    );
  }
}

