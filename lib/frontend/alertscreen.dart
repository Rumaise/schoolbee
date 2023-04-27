import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolbee/constants/constants.dart';

class AlertScreen extends StatefulWidget {
  const AlertScreen({super.key});

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {

 List<dynamic> alertslist = [
    {
      "time":"7th April, 2023",
      "status_type":"Late for bus today.",
      "reason":"Your ward was unable to board the bus on time today.",
      "last_route":false
    },
     {
      "time":"6th April, 2023",
      "status_type":"Absent for the exam.",
      "reason":"Your ward was unable to board the bus on time today.",
      "last_route":false
    },
     {
      "time":"7th April, 2023",
      "status_type":"Left the institution early.",
      "reason":"Your ward was unable to board the bus on time today.",
      "last_route":false
    },
     {
      "time":"4th April, 2023",
      "status_type":"Bus went out of fuel.",
      "reason":"Your ward was unable to board the bus on time today.",
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
                                      'Alerts',
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
                padding: const EdgeInsets.only(left: 40,right: 40),
                child: Column(
                  children: alertslist.map((e) {
                    return   Constants.timelineAlerts(e);
                  }).toList() ,
                ),
              ),

            )),
             Padding(
               padding: const EdgeInsets.only(bottom: 40),
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
                                'Load More',
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