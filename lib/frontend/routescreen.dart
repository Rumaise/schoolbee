import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolbee/constants/constants.dart';
import 'package:timelines/timelines.dart';

class RouteScreen extends StatefulWidget {
  const RouteScreen({super.key});

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {

  List<dynamic> routestatus = [
    {
      "time":"9:15 AM",
      "location":"Hyderbad",
      "status":true,
      "last_route":false
    },
     {
      "time":"9:30 AM",
      "location":"Telangana",
      "status":true,
      "last_route":false
    },
     {
      "time":"10:00 AM",
      "location":"Vishakapatnam",
      "status":false,
      "last_route":false
    },
     {
      "time":"1:00 PM",
      "location":"Kerala",
      "status":false,
      "last_route":true
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Container(
              height: MediaQuery.of(context).size.height/5,
              width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 20),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                                    height: MediaQuery.of(context).size.height/9,
                                    // color: Colors.red,
                            child: Row(
                              children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon:  FaIcon(FontAwesomeIcons.angleLeft,size: 30,
                            
                            )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                      'Route Status',
                                      style: GoogleFonts.barlow(
                                   fontSize: 25,
                                   color: Colors.black,
                                   fontWeight: FontWeight.w700,                                   
                                      ),
                                      
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                       
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ),
            SizedBox(height: 5,),
            Expanded(child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Column(
                  children: routestatus.map((e) {
                    return   Constants.timelineRoute(e);
                  }).toList() ,
                ),
              ),

            )),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 15),
               child: Container(
                height: MediaQuery.of(context).size.height/14,
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Constants.buttoncolor
                    ),
                    child: Center(
                      child: Text(
                                'Give Feedback',
                                style: GoogleFonts.barlow(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                   
                                ),
                                
                                 ),
                    ),
                  ),
                ),
                         ),
             ), Padding(
               padding: const EdgeInsets.symmetric(vertical: 15),
               child: Container(
                height: MediaQuery.of(context).size.height/14,
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Constants.buttoncolor
                    ),
                    child: Center(
                      child: Text(
                                'Bus Attendance',
                                style: GoogleFonts.barlow(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                   
                                ),
                                
                                 ),
                    ),
                  ),
                ),
                         ),
             )
          ],
        ),
      ),
    );
  }
}