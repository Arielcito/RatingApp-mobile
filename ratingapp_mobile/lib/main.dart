import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ratingapp_mobile/screens/benefits_screen.dart';
import 'package:ratingapp_mobile/screens/channels_screen.dart';
import 'package:ratingapp_mobile/screens/main_screen.dart';
import 'package:ratingapp_mobile/screens/radio_screen.dart';
import 'package:ratingapp_mobile/screens/user_screen.dart';
import 'package:ratingapp_mobile/screens/welcome_screen.dart';
import 'package:ratingapp_mobile/screens/login_screen.dart';
import 'package:ratingapp_mobile/screens/register_screen.dart';
import 'package:ratingapp_mobile/screens/widgets/full_screen_video_player.dart';
import 'package:ratingapp_mobile/screens/widgets/full_screen_web_view_player.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
            [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
        .then((_) {
      runApp(const MyApp());
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rating App',
      initialRoute: "/",
      routes: {
        "/": (context) => const WelcomeScreen(),
        "/login": (context) => const LoginScreen(),
        "/register": (context) => const RegisterScreen(),
        "/home": (context) => const MainScreen(),
        "/channels": (context) => const ChannelsScreen(),
        "/radio": (context) => const RadioScreen(),
        "/benefits": (context) => const BenefitsScreen(),
        "/user": (context) => const UserScreen(),
        "/fullScreenVideoPlayer" : (context) => const FullScreenWebViewPlayer(),
      },
    );
  }
}
