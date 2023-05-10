import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:route_transitions/route_transitions.dart';
import 'package:schoolbee/frontend/homescreen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text("Verify device",style:GoogleFonts.barlow(
                                          fontSize:31,
                                          color: Color(0xFF5649C9),
                                          fontWeight: FontWeight.w600,
                                           
                                        ) ,),
                ),
                                       Text("Code is sent to email@email.com",style:GoogleFonts.barlow(
                                        fontSize:20,
                                        color: Color(0xFF696969
      ),
                                        fontWeight: FontWeight.w400,
                                         
                                      ) ,),
                                      Container(
                                        height: MediaQuery.of(context).size.height/2.2,
                                        width: MediaQuery.of(context).size.width,
                                        child: Image.asset("assets/images/otp.png"),
                                      ),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 30),
                   child: Pinput(
                            defaultPinTheme: PinTheme(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              width: 45,
                              height: 46,
                              textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(30, 60, 87, 1),
                                  fontWeight: FontWeight.w600),
                              decoration: BoxDecoration(
                              color: Color(0xFFE7E5FA),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            focusedPinTheme: PinTheme(
                                                       padding: EdgeInsets.symmetric(horizontal: 4),
                              width: 46,
                              height: 46,
                              textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(30, 60, 87, 1),
                                  fontWeight: FontWeight.w600),
                              decoration: BoxDecoration(
                            color: Color(0xFFE7E5FA),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            submittedPinTheme: PinTheme(
                                                       padding: EdgeInsets.symmetric(horizontal: 4),
                              width: 46,
                              height: 46,
                              textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(30, 60, 87, 1),
                                  fontWeight: FontWeight.w600),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 243, 238, 238)),
                                borderRadius: BorderRadius.circular(12),
                                color: Color.fromRGBO(234, 239, 243, 1),
                              ),
                            ),
                            validator: (value) {
                                
                            },
                            pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                            showCursor: true,
                            length: 4,
                            onCompleted: (pin) {
                              
                            },
                          ),
                 ),
                         SizedBox(
                height: 20,
              ),
                         RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Didn’t receive the code ?",
                        style:GoogleFonts.barlow(
                                      fontSize:18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                       
                                    ) ,
                      ),
                      TextSpan(
                          text: " / Request Again",
                          style: GoogleFonts.barlow(
                                      fontSize:18,
                                      color: Color(0xFF4F41E4),
                                      fontWeight: FontWeight.w500,
                                       
                                    ) ),
                    ],
                  )),
                        SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      slideRightWidget(newPage: HomeScreen(), context: context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(25),
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: Color(0xFF2F286E),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Center(
                        child: Text(
                          "Verify and continue",
                          style:GoogleFonts.barlow(
                                        fontSize:20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                         
                                      ) 
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ],
            ),
          ) ,
        ),
      ),
    );
  }
}