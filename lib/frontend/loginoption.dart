import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_transitions/route_transitions.dart';
import 'package:schoolbee/constants/constants.dart';
import 'package:schoolbee/frontend/driverLogin.dart';
import 'package:schoolbee/frontend/studentLogin.dart';

class LoginOption extends StatefulWidget {
  const LoginOption({super.key});

  @override
  State<LoginOption> createState() => _LoginOptionState();
}

class _LoginOptionState extends State<LoginOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/2,
                // color: Colors.yellow,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/lo.png"),
              ),
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Live together,",
              style: GoogleFonts.barlow(
                                      fontSize:40,
                                      color: Color(0xFF5649C9),
                                      fontWeight: FontWeight.w600,
                                       
                                    ),
                                    ),            Text("stay together",
              style: GoogleFonts.barlow(
                                      fontSize:40,
                                      color: Color(0xFF5649C9),
                                      fontWeight: FontWeight.w600,
                                       
                                    ),
                                    ),
                                    
                    ],
                  ),
                  Text("Welcome to SchoolBee, where the activity of every student can be monitored with ease.",
                                    textAlign: TextAlign.center,
                                         style: GoogleFonts.barlow(
                                      fontSize:20,
                                      color: Color(0xFF3A3A3C),
                                      fontWeight: FontWeight.w500,
                                       
                                    ),
                                    ),
                  Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                          GestureDetector(
                    onTap: (){
                    slideRightWidget(newPage: studentLogin(), context: context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        height: MediaQuery.of(context).size.height/12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Constants.buttoncolor
                        ),
                        child: Center(
                          child: Text(
                                    'Student',
                                    style: GoogleFonts.barlow(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                       
                                    ),
                                    
                                     ),
                        ),
                      ),
                    ),
                  ) , GestureDetector(
                    onTap: (){
         slideRightWidget(newPage: DriverLogin(), context: context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        height: MediaQuery.of(context).size.height/12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Constants.buttoncolor
                        ),
                        child: Center(
                          child: Text(
                                    'Driver',
                                    style: GoogleFonts.barlow(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                       
                                    ),
                                    
                                     ),
                        ),
                      ),
                    ),
                  )
                                      ],
                                    )
                ],
              ))
              ,
                                    
            ],
          ),
        ),
      ),
    );
  }
}