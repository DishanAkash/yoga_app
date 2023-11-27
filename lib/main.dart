import 'package:flutter/material.dart';
import 'package:yoga/feature/yoga/presentaion/pages/home/home.dart';
import 'package:yoga/feature/yoga/presentaion/pages/launch_screen/launch_screen.dart';
import 'package:yoga/feature/yoga/presentaion/pages/lesson_view/lesson_view.dart';
import 'package:yoga/feature/yoga/presentaion/pages/loging/loging_email.dart';
import 'package:yoga/feature/yoga/presentaion/pages/loging/loging_mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/launchScreen',
          routes: {
             '/home': (context) => const Home(),
            '/loggingPhone': (context) => const LoggingMobileNumber(),
            '/launchScreen': (context) => const LaunchScreen(),
            '/loggingEmail': (context) => const LoggingEmail(),
            '/lessonView':(context) => const LessonView(),
          },
        ));
  }
}