import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga/feature/yoga/domain/services/auth_services.dart';
import 'package:yoga/feature/yoga/domain/services/session_services.dart';
import 'package:yoga/feature/yoga/presentaion/pages/lesson_view/lesson_view.dart';
import 'package:yoga/feature/yoga/presentaion/styles/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _controller = PageController(viewportFraction: 5);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Good Morning",
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: black, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/user.png'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.power_settings_new,
                size: 35,
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/yoga 9.png"),
                            fit: BoxFit.fill,
                          ),
                          color: lowBlue,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ], // Adjust the radius as needed
                        ),
                      ),
                      Text(
                        'Full Body',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/yoga 8.jpg"),
                            fit: BoxFit.fill,
                          ),
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Upper Body',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/yoga 7.jpg"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ], // Adjust the radius as needed
                        ),
                      ),
                      Text(
                        'Lower Body',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/yoga 2.png"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ], // Adjust the radius as needed
                        ),
                      ),
                      Text(
                        'Hip',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: purple,
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
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Basic Yoga",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(
                      "Lorem ipsum a simple dummy text of the printing and typesetting industry ",
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Top Session",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Flexible(
                child: ListView(
              children: [
                GestureDetector(
                  onTap: () async{
                    var res = await SessionServices().createSession(
                    );
                    if (res) {
                      Navigator.pushReplacementNamed(
                          context, "/lessonView");
                    }
                  },
                  child: Container(
                    width: 130,
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
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/images/yoga 9.png"),
                              fit: BoxFit.fill,
                            ),
                            color: lowBlue,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ], // Adjust the radius as needed
                          ),
                        ),
                        Expanded(
                            child: ListTile(
                          title: Text(
                            "Yoga Pilates",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: 15,
                                //  fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "5 lessons",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: 12,
                                    //  fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "By Sarah william",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        color: black,
                                        fontSize: 12,
                                        //  fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: grey,
                                    radius: 3,
                                    //Text
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "All level",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        color: black,
                                        fontSize: 12,
                                        //  fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Image.asset(
                                    'assets/images/star.png',
                                    width: 10.0,
                                    height: 10.0,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "4.5",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        color: black,
                                        fontSize: 12,
                                        //  fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 130,
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
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/yoga 8.jpg"),
                            fit: BoxFit.fill,
                          ),
                          color: lowBlue,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ], // Adjust the radius as needed
                        ),
                      ),
                      Expanded(
                          child: ListTile(
                        title: Text(
                          "Yoga Pilates",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "5 lessons",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: black,
                                  fontSize: 12,
                                  //  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "By Sarah william",
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: 12,
                                      //  fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                CircleAvatar(
                                  backgroundColor: grey,
                                  radius: 3,
                                  //Text
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "All level",
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: 12,
                                      //  fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Image.asset(
                                  'assets/images/star.png',
                                  width: 10.0,
                                  height: 10.0,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "4.5",
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: 15,
                                      // fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                Container(
                  width: 130,
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
                        width: 100,
                        height: 100,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/yoga 7.jpg"),
                            fit: BoxFit.fill,
                          ),
                          color: lowBlue,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ], // Adjust the radius as needed
                        ),
                      ),
                      Expanded(
                          child: ListTile(
                        title: Text(
                          "Yoga Pilates",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "5 lessons",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: black,
                                  fontSize: 12,
                                  //  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "By Sarah william",
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: 12,
                                      //  fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                CircleAvatar(
                                  backgroundColor: grey,
                                  radius: 3,
                                  //Text
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "All level",
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: 12,
                                      //  fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Image.asset(
                                  'assets/images/star.png',
                                  width: 10.0,
                                  height: 10.0,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "4.5",
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: 12,
                                      //  fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
