import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_transitions/route_transitions.dart';
import 'package:schoolbee/constants/constants.dart';
import 'package:schoolbee/frontend/alertscreen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width,
             decoration:  BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36)
              ),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Constants.gradientcolortop,
                Constants.gradientcolorbottom
              ],
            ))
            ,child: Column(
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
                                    height: MediaQuery.of(context).size.height/7,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                             
                                
                                      Text(
                                'Good Morning',
                                style: GoogleFonts.barlow(
                                  fontSize: 22,
                                      color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  
                                ),
                                ),
                                 Text(
                                'Alex Mathew',
                                style: GoogleFonts.barlow(
                                  fontSize: 27,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                   
                                ),
                                
                                 )
                                
                              ],
                            ),
                          ),
                        ),
                          GestureDetector(
                            onTap: (){
                              slideRightWidget(newPage: AlertScreen(), context: context);
                            },
                            child: Container(
                                          height: 61,
                                      width: 61,
                                      // color: Colors.red,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC6C6C6),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: const Center(
                                  child: FaIcon(FontAwesomeIcons.bell,color: Colors.white,),
                                ),
                                    ),
                          )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ),
            SizedBox(height: 5,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/8,
              // color: Colors.green,
              child: Padding(
  padding: const EdgeInsets.only(left: 24,right: 20),
                child: Row(
                  children: [
                    Expanded(child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(
                                'Viewing',
                                style: GoogleFonts.barlow(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                   
                                ),
                                
                                 ),  Text(
                                'Garcia Chandy',
                                style: GoogleFonts.barlow(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                   
                                ),
                                
                                 ),    Text(
                                'Grade 9-A',
                                style: GoogleFonts.barlow(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                   
                                ),
                                
                                 )
                        ],
                      ),
                    )),GestureDetector(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/5,
                            height: MediaQuery.of(context).size.height/10,
                        // ,color: Colors.green,
                        child: CircleAvatar(
                          backgroundColor: Constants.circleavatarcolor,
                          child: ClipRRect(
                            child: Padding(
                              padding:
                                  const EdgeInsets.all(
                                      2.0),
                              child: CircleAvatar(
                                      radius: 40,
                                      backgroundImage:
                                          const NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80"),
                                      onBackgroundImageError:
                                          (error,
                                              stackTrace) {
                                        Image.asset(
                                          "assets/images/man.png",
                                          fit: BoxFit
                                              .fill,
                                        );
                                      },
                                    ),
                            ),
                          ),
                        ),
                          ), const Icon(Icons.arrow_drop_down,color: Colors.black,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: MediaQuery.of(context).size.height/2.6,
                width: MediaQuery.of(context).size.width/1.1,
                child: Card(
                  elevation: 7,
                  color: Colors.white,
                  semanticContainer: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                  ),
                ),
              ),
            ),
            Container(
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                                'View on Map',
                                style: GoogleFonts.barlow(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                   
                                ),
                                
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.symmetric(horizontal: 5),
                                   child: Icon(Icons.location_on,color: Colors.white,),
                                 )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
  }
}