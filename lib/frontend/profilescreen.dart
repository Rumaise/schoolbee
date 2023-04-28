import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_transitions/route_transitions.dart';
import 'package:schoolbee/constants/constants.dart';
import 'package:schoolbee/frontend/indicator.dart';
import 'package:schoolbee/frontend/scorecardscreen.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
    final List<ChartData> chartData = [
            
            ChartData('Absent', 17,Color(0xFFE1DFF6)),  
            ChartData('Present', 83,Color(0xFF3A3665)),
        ];

        List<dynamic> holidayupdates = [
          {
            "time":"7th April, 2023",
            "reason":"Holiday on the account of Good Friday."
          },
          {
            "time":"8th April, 2023",
            "reason":"Holiday on the account of Second Saturday."
          },
        ];
  @override
  Widget build(BuildContext context) {
    return Container(
    height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/4.5,
              // color: Colors.yellow,
              child: Container(
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
                                  'Student',
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
            )
           ,
           Container(
            width: MediaQuery.of(context).size.width/1.1,
            height: MediaQuery.of(context).size.height/3.5,
            child: Card(
              elevation: 5,
        semanticContainer: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/15,
              width: MediaQuery.of(context).size.width/1.1,
        
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Row(
                     children: [
                       CircleAvatar(
              backgroundColor: Constants.circleavatarcolor,
                                            radius: 38,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Image.asset("assets/images/calender.png"),
                                            ),
                                          
                                          ),
                                          Text(
                                  'Attendance',
                                  style: GoogleFonts.barlow(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                     
                                  ),
                                  
                                   ), 
                     ],
                   ),Container(
                    width: MediaQuery.of(context).size.width/3.8,
                    // color: Colors.red,
                    child: Container(
                      height:MediaQuery.of(context).size.height/25 ,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: Color(0xFFDADADA),
                        
                        )
                      ),
                    ),
                   )
                ],
              ),
            ),Expanded(child:  Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Indicator(
                        color: Color(0xFF3A3665),
                        text: 'Present 83%',
                        size: 10,
                        isSquare: true,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Indicator(
                        color: Color(0xFFE1DFF6),
                        text: 'Absent 17%',
                
                        size: 10,
                        isSquare: true,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SfCircularChart(
                              series: <CircularSeries>[
                                  // Render pie chart
                                  PieSeries<ChartData, String>(
                                      dataSource: chartData,
                                      pointColorMapper:(ChartData data, _) => data.color,
                                      xValueMapper: (ChartData data, _) => data.x,
                                      yValueMapper: (ChartData data, _) => data.y
                                  )
                              ]
                          ),
                ),
              ],
            )
                )
          ],
        ),
           ))
  ,

            Container(
            width: MediaQuery.of(context).size.width/1.1,
            height: MediaQuery.of(context).size.height/3.5,
            child: Card(
              elevation: 5,
        semanticContainer: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/15,
              width: MediaQuery.of(context).size.width/1.1,
        
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Row(
                     children: [
                       CircleAvatar(
              backgroundColor: Constants.circleavatarcolor,
                                            radius: 38,
                                            child: Container(
                                              height: 38,
                                              child: Padding(
                                                padding: const EdgeInsets.all(4.0),
                                                child: Image.asset("assets/images/holiday.png"),
                                              ),
                                            ),
                                          
                                          ),
                                          Text(
                                  'Holiday Updates',
                                  style: GoogleFonts.barlow(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                     
                                  ),
                                  
                                   ), 
                     ],
                   ),Container(
                    width: MediaQuery.of(context).size.width/8
                   )
                ],
              ),
            ),Expanded(child:  Column(
              children: holidayupdates.map((e) {
                return Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                                   Text(
                                      e["time"],
                                      style: GoogleFonts.barlow(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                         
                                      ),
                                      
                                       ) ,Text(
                                      e["reason"],
                                      style: GoogleFonts.barlow(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                         
                                      ),
                                      
                                       )
                      ],
                    ),
                  ),
                );
              }).toList()
            )
                )
          ],
        ),
           )),
           
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 5),
             child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                  
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.4,
                        height: MediaQuery.of(context).size.height/12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Constants.buttoncolor
                        ),
                        child: Center(
                          child: Text(
                                    'Pay Dues',
                                    style: GoogleFonts.barlow(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                       
                                    ),
                                    
                                     ),
                        ),
                      ),
                    ),
                  ),GestureDetector(
                    onTap: (){
                      slideRightWidget(newPage: ScoreCardScreen(), context: context);
                    },
                    child: Padding(
                     padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.4,
                        height: MediaQuery.of(context).size.height/12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Constants.buttoncolor
                        ),
                        child: Center(
                          child: Text(
                                    'Show Marksheet',
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
                ],
              ),
           )
           ])
    );
  }
}

class ChartData {
        ChartData(this.x, this.y, [this.color]);
        final String x;
        final double y;
        final Color? color;
    }