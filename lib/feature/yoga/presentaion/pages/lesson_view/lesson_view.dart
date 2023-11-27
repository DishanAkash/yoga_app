import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga/feature/yoga/presentaion/pages/lesson_single_view/lesson_four.dart';
import 'package:yoga/feature/yoga/presentaion/pages/lesson_single_view/lesson_one.dart';
import 'package:yoga/feature/yoga/presentaion/pages/lesson_single_view/lesson_three.dart';
import 'package:yoga/feature/yoga/presentaion/pages/lesson_single_view/lesson_two.dart';
import 'package:yoga/feature/yoga/presentaion/styles/colors.dart';

class LessonView extends StatefulWidget {
  const LessonView({super.key});

  @override
  State<LessonView> createState() => _LessonViewState();
}

class _LessonViewState extends State<LessonView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 400,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/yoga 3.jpeg',
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
                    )
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
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Yoga Pilates Full Body',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: black,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '5 lessons',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: blue,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LessonOne()),
                        );
                      },
                      child: Container(
                        //width: 130,
                        height: 130,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ], // Adjust the radius as needed
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/search.png"),
                                  fit: BoxFit.fill,
                                ),
                                //color: lowBlue,
                                borderRadius: BorderRadius.circular(
                                    50.0), // Adjust the radius as needed
                              ),
                            ),
                            Expanded(
                                child: ListTile(
                              title: Text(
                                "Lesson 01",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: 15,
                                    //  fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              subtitle: Text(
                                "Lorem ipsum is simply dummy text off",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: 12,
                                    //  fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              trailing: IconButton(
                                onPressed: null,
                                icon: CircleAvatar(
                                  backgroundColor: Colors.white.withOpacity(.58),
                                  child: const Icon(
                                    Icons.play_circle,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LessonTwo()),
                        );
                      },
                      child: Container(
                        //width: 130,
                        height: 130,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ], // Adjust the radius as needed
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/search.png"),
                                  fit: BoxFit.fill,
                                ),
                                //color: lowBlue,
                                borderRadius: BorderRadius.circular(
                                    50.0), // Adjust the radius as needed
                              ),
                            ),
                            Expanded(
                                child: ListTile(
                              title: Text(
                                "Lesson 02",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: 15,
                                    //  fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              subtitle: Text(
                                "Lorem ipsum is simply dummy text off",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: 12,
                                    //  fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              trailing: IconButton(
                                onPressed: null,
                                icon: CircleAvatar(
                                  backgroundColor: Colors.white.withOpacity(.58),
                                  child: const Icon(
                                    Icons.play_circle,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LessonThree()),
                        );
                      },
                      child: Container(
                        //width: 130,
                        height: 130,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ], // Adjust the radius as needed
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/search.png"),
                                  fit: BoxFit.fill,
                                ),
                                //color: lowBlue,
                                borderRadius: BorderRadius.circular(
                                    50.0), // Adjust the radius as needed
                              ),
                            ),
                            Expanded(
                                child: ListTile(
                              title: Text(
                                "Lesson 03",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: 15,
                                    //  fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              subtitle: Text(
                                "Lorem ipsum is simply dummy text off",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: 12,
                                    //  fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              trailing: IconButton(
                                onPressed: null,
                                icon: CircleAvatar(
                                  backgroundColor: Colors.white.withOpacity(.58),
                                  child: const Icon(
                                    Icons.play_circle,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LessonFour()),
                        );
                      },
                      child: Container(
                        //width: 130,
                        height: 130,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ], // Adjust the radius as needed
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/search.png"),
                                  fit: BoxFit.fill,
                                ),
                                //color: lowBlue,
                                borderRadius: BorderRadius.circular(
                                    50.0), // Adjust the radius as needed
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  "Lesson 04",
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: 15,
                                      //  fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                subtitle: Text(
                                  "Lorem ipsum is simply dummy text off",
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: 12,
                                      //  fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                trailing: IconButton(
                                  onPressed: null,
                                  icon: CircleAvatar(
                                    backgroundColor:
                                        Colors.white.withOpacity(.58),
                                    child: const Icon(
                                      Icons.play_circle,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      //width: 130,
                      height: 130,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ], // Adjust the radius as needed
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 65,
                            height: 65,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/images/search.png"),
                                fit: BoxFit.fill,
                              ),
                              //color: lowBlue,
                              borderRadius: BorderRadius.circular(
                                  50.0), // Adjust the radius as needed
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Text(
                                "Lesson 05",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: 15,
                                    //  fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              subtitle: Text(
                                "Lorem ipsum is simply dummy text off",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: 12,
                                    //  fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              trailing: IconButton(
                                onPressed: null,
                                icon: CircleAvatar(
                                  backgroundColor:
                                      Colors.white.withOpacity(.58),
                                  child: const Icon(
                                    Icons.play_circle,
                                    color: Colors.black,
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
            )
          ],
        ),
      ),
    );
  }
}
