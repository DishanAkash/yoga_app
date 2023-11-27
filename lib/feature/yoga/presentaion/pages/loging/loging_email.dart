import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga/feature/yoga/domain/services/auth_services.dart';
import 'package:yoga/feature/yoga/presentaion/pages/home/home.dart';
import 'package:yoga/feature/yoga/presentaion/pages/navigationbar/navigationbar.dart';
import 'package:yoga/feature/yoga/presentaion/styles/colors.dart';

class LoggingEmail extends StatefulWidget {
  const LoggingEmail({super.key});

  @override
  State<LoggingEmail> createState() => _LoggingEmailState();
}

class _LoggingEmailState extends State<LoggingEmail> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/yoga 2.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                right: 15,
                left: 15,
              ),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: const TextStyle(fontSize: 15),
                  fillColor: white,
                  // filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: grey,
                      width: 2.0,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ('email');
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                right: 15,
                left: 15,
              ),
              child: TextFormField(
                controller: passController,
                obscureText: obscureText,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    child: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility),
                  ),
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    fontSize: 15,
                  ),
                  fillColor: white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: grey,
                      width: 2.0,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ('Password');
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: TextButton(
                child: Text(
                  "Forgot Password?",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                onPressed: () async {
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                right: 15,
                left: 15,
              ),
              child: Row(
                children: [
                  Text(
                    "By Continuing, you agree to our",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Term of service",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: blue,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "and",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
               // top: 8.0,
                right: 15,
                left: 15,
              ),
              child: Text(
                "Privacy Policy",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: blue,
        
                  ),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(
               top: 20.0,
              right: 15,
              left: 15,),
              child: SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: blue,
                  ),
                  onPressed: () async{
                    var res = await AuthService().signInWithPassword(
                      emailController.text,
                      passController.text,
                    );
                    if (res) {
                      Navigator.pushReplacementNamed(
                          context, "/home");
                    }
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
            ),
          ],
        ),
      ),
    ));
  }
}
