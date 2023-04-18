import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_transitions/route_transitions.dart';
import 'package:schoolbee/constants/constants.dart';
import 'package:schoolbee/frontend/routescreen.dart';

class BusInfoScreen extends StatefulWidget {
  const BusInfoScreen({super.key});

  @override
  State<BusInfoScreen> createState() => _BusInfoScreenState();
}

class _BusInfoScreenState extends State<BusInfoScreen> {

  List<dynamic> busstops = [
    {
      "time":"09:55 AM",
      "location":"Hyderabad"
    }, {
      "time":"10:10 AM",
      "location":"Kerala"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
 child:Column(
  children: [
    Container(
              height: MediaQuery.of(context).size.height/5,
              width: MediaQuery.of(context).size.width,
             decoration:  BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36)
              ),
            )
            ,child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 20),
                  child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/8,
                // color: Colors.green,
                child: Padding(
      padding:  EdgeInsets.only(left: 24,right: 20),
                  child: Row(
                    children: [
                      Expanded(child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Text(
                                  'Driver,',
                                  style: GoogleFonts.barlow(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                     
                                  ),
                                  
                                   ),  Text(
                                  'Andrew Mentis',
                                  style: GoogleFonts.barlow(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                     
                                  ),
                                  
                                   ),    Row(
                                     children: [
                                      RatingBar.builder(
   initialRating: 4,
   minRating: 1,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   itemSize: 18,
   unratedColor: Color(0xFFD9D9D9),
   itemBuilder: (context, _) =>  Icon(
     Icons.star,
     color: Constants.starratingcolor,
   ),
   onRatingUpdate: (rating) {
     print(rating);
   },
),
                                       Padding(
                                         padding: const EdgeInsets.only(left: 4),
                                         child: Text(
                                                                         '4.0',
                                                                         style: GoogleFonts.barlow(
                                          fontSize: 14,
                                          color: Constants.gradientcolorbottom,
                                          fontWeight: FontWeight.w700,
                                           
                                                                         ),
                                                                         
                                         ),
                                       ),
                                     ],
                                   )
                          ],
                        ),
                      )),Container(
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
                      )
                    ],
                  ),
                ),
              ),
                ),
              ],
            ),
            ),
            SizedBox(height: 5,),
             Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: MediaQuery.of(context).size.height/2.6,
                width: MediaQuery.of(context).size.width/1.1,
                child: Card(
                  elevation: 6,
                  color: Colors.white,
                  semanticContainer: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    slideRightWidget(newPage: RouteScreen(), context: context);
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
                                  'View Route',
                                  style: GoogleFonts.barlow(
                                    fontSize: 19,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                     
                                  ),
                                  
                                   ),
                      ),
                    ),
                  ),
                ),Padding(
                 padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width/2.5,
                    height: MediaQuery.of(context).size.height/12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Constants.buttoncolor
                    ),
                    child: Center(
                      child: Text(
                                'Subscribe',
                                style: GoogleFonts.barlow(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                   
                                ),
                                
                                 ),
                    ),
                  ),
                ),
              ],
            ),Expanded(child: Container(
              // color: Colors.yellow,
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 40,top: 8,bottom: 8),
                    child: Row(
                      children: [
                        Text(
                                  'Next Stop',
                                  style: GoogleFonts.barlow(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                     
                                  ),)
                      ],
                    ),
                  ),Column(
                    children:busstops.map((e){
                      return Padding(
                        padding: const EdgeInsets.only(left: 40,right: 10),
                        child: Row(
                          children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          width: MediaQuery.of(context).size.width/4,
                          child: Text(
                                    e["time"].toString()  ,
                                        style: GoogleFonts.barlow(
                                          fontSize: 19,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                           
                                        ),),
                        ),
                      ),Text(
                                e["location"].toString()  ,
                                    style: GoogleFonts.barlow(
                                      fontSize: 19,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                       
                                    ),)
                          ],
                        ),
                      );
                    }).toList() ,
                  )
                ],
              ),
            ))
   
  ],
 ) ,
    );
  }
}