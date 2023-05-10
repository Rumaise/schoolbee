import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_transitions/route_transitions.dart';
import 'package:schoolbee/constants/squareTile.dart';
import 'package:schoolbee/frontend/authscreen.dart';

class studentLogin extends StatefulWidget {
  const studentLogin({Key? key}) : super(key: key);

  @override
  State<studentLogin> createState() => _studentLoginState();
}

class _studentLoginState extends State<studentLogin> {
  bool hiddenPass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24, right: 20),
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                      "Lets get back on!",
                                      style: GoogleFonts.barlow(
                                        fontSize: 40,
                                        color: Color(0xFF5649C9),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Welcome back,",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.barlow(
                                      fontSize: 40,
                                      color: Color(0xFF3A3A3C),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Student",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.barlow(
                                          fontSize: 40,
                                          color: Color(0xFF3A3A3C),
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/images/wave.png",
                                        height: 40,
                                        width: 55,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 1, color: Color(0xFF5649C9)), //<-- SEE HERE
                      ),
                      hintText: 'Student ID',
                      hintStyle: const TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xFF5649C9),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: (value) {
                      // do something
                    },
                  ),
                ),
                Container(
                  child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                    child: TextFormField(
                      obscureText: hiddenPass,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () {
                            togglePassword();
                          },
                          child: Icon(
                            hiddenPass ? Icons.visibility : Icons.visibility_off,
                            color: Color(0xFF5649C9),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 1, color: Color(0xFF5649C9)), //<-- SEE HERE
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xFF5649C9),
                          ),
                        ),
                        hintText: "Password",
                        hintStyle: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Divider(
                  indent: 30,
                  endIndent: 30,
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: "assets/images/social.png"),
                    SizedBox(
                      width: 20,
                    ),
                    SquareTile(imagePath: "assets/images/github-sign.png"),
                    SizedBox(
                      width: 20,
                    ),
                    SquareTile(imagePath: "assets/images/apple-logo.png"),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    slideRightWidget(newPage: AuthScreen(), context: context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: Color(0xFF2F286E),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
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

  void togglePassword() {
    setState(() {
      hiddenPass = !hiddenPass;
    });
  }
}
