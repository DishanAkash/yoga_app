import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga/feature/yoga/domain/services/auth_services.dart';
import 'package:yoga/feature/yoga/presentaion/styles/colors.dart';

class LoggingMobileNumber extends StatefulWidget {
  const LoggingMobileNumber({super.key});

  @override
  State<LoggingMobileNumber> createState() => _LoggingMobileNumberState();
}

class _LoggingMobileNumberState extends State<LoggingMobileNumber> {
  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool obscureText = true;
  bool obscureText1 = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 15, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Registration",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Create your account",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
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
                      return ('Mobile number');
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: userNameController,
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    labelStyle: const TextStyle(fontSize: 15),
                    fillColor: white,
                    //   filled: true,
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
                      return ('User Name');
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 160,
                      child: TextFormField(
                        controller: genderController,
                        decoration: InputDecoration(
                          labelText: 'Gender',
                          labelStyle: const TextStyle(fontSize: 15),
                          fillColor: white,
                          //   filled: true,
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
                            return ('Gender');
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      child: TextFormField(
                        // controller: passController,
                        decoration: InputDecoration(
                          labelText: 'Age',
                          labelStyle: const TextStyle(fontSize: 15),
                          fillColor: white,
                          //   filled: true,
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
                            return ('age');
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: passController,
                  obscureText: obscureText1,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText1 = !obscureText1;
                        });
                      },
                      child: Icon(obscureText1
                          ? Icons.visibility_off
                          : Icons.visibility),
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
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  //  controller: passController,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      child: Icon(obscureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    hintText: 'Confirm Password',
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
                      return ('Confirm Password');
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 140),
                  child: SizedBox(
                    width: 350,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: blue,
                      ),
                      onPressed: () async {
                        var res = await AuthService().signUpWithPassword(
                          userNameController.text,
                          emailController.text,
                          genderController.text,
                          passController.text,
                        );
                        if (res) {
                          Navigator.pushReplacementNamed(
                              context, "/loggingEmail");
                        }
                      },
                      child: Text(
                        'Create Account',
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
        ),
      ),
    );
  }
}
