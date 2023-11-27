import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga/feature/yoga/presentaion/styles/colors.dart';

class LessonTwo extends StatefulWidget {
  const LessonTwo({super.key});

  @override
  State<LessonTwo> createState() => _LessonTwoState();
}

class _LessonTwoState extends State<LessonTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 500,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/Yoga 4.jpg',
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.3),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            end: const Alignment(0.0, 0.4),
                            begin: const Alignment(0.0, -1),
                            colors: <Color>[
                              const Color(0x8A000000),
                              Colors.black12.withOpacity(0.0)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 65,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            end: const Alignment(0.0, -1),
                            begin: const Alignment(0.0, 0.4),
                            colors: <Color>[
                              const Color(0x8A000000),
                              Colors.black12.withOpacity(0.0)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -10,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(16),
                          ),
                        ),
                      ),
                    ),    Padding(
                      padding: const EdgeInsets.only(top: 350,left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lesson 02',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: white,
                                fontSize: 20,
                                //  fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Text(
                            "Lorem ipsum is simply dummy text off",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: white,
                                fontSize: 15,
                                //  fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            "the printing and typesetting industry",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: white,
                                fontSize: 15,
                                //  fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  icon: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(.58),
                    child: const Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Image.asset(
                  'assets/images/player.png',
                  // width: 100,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}