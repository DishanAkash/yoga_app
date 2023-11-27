import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga/feature/yoga/presentaion/pages/loging/loging_mobile.dart';
import 'package:yoga/feature/yoga/presentaion/styles/colors.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/yoga_1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "KeepYoga",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: grey,
                            fontSize: 28,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Practice Yoga",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "Whenever you want",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: white,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                              context, "/loggingPhone");
                        },
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: blue,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                              context, "/loggingEmail");
                        },
                        child: Text(
                          'Log in',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
