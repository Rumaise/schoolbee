import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolbee/constants/constants.dart';
import 'package:schoolbee/frontend/indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ScoreCardScreen extends StatefulWidget {
  const ScoreCardScreen({super.key});

  @override
  State<ScoreCardScreen> createState() => _ScoreCardScreenState();
}

class _ScoreCardScreenState extends State<ScoreCardScreen> {

  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  List<dynamic> datalist = [
    {
      "logo":"assets/images/study.png",
      "time":"9:15 AM",
      "type":"History",
      "reason":"Evolution of the global economy"
    }, {
      "logo":"assets/images/study.png",
      "time":"10:15 AM",
      "type":"Mathematics",
      "reason":"Introduction to trigonometry"
    }, {
      "logo":"assets/images/study.png",
      "time":"11:15 AM",
      "type":"Science",
      "reason":"Life Processes and bio - molecules"
    }
  ];
 
  @override
  void initState() {
    data = [
      _ChartData('Scored',92),
      _ChartData('Total', 100),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                                      'Score Card',
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
            Container(
            width: MediaQuery.of(context).size.width/1.1,
            height: MediaQuery.of(context).size.height/3.5,
            child: Card(
              elevation: 5,
        semanticContainer: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Container(
         height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/1.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width:MediaQuery.of(context).size.width/1.1 - MediaQuery.of(context).size.width/3.8 ,
                height: MediaQuery.of(context).size.height/3.5,
                // color: Colors.red,
                child: Column(
                  children: [
  Row(
   children: [
                 CircleAvatar(
     backgroundColor: Colors.white,
                                   radius: 27,
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Image.asset("assets/images/study.png"),
                                   ),
                                 
                                 ),
                                 Padding(
                                  padding: EdgeInsets.only(left: 10),
                                   child: Text(
                                                          'Learning Journey',
                                                          style: GoogleFonts.barlow(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w600,
                                                             
                                                          ),
                                                          
                                                           ),
                                 ), 
   ],
  ),

                           Expanded(
         child: SfCircularChart(
   tooltipBehavior: _tooltip,
   series: <CircularSeries<_ChartData, String>>[
     DoughnutSeries<_ChartData, String>(
         dataSource: data,
   
         strokeColor: Color(0xFF3A3665
),
         xValueMapper: (_ChartData data, _) => data.x,
         yValueMapper: (_ChartData data, _) => data.y,
         name: 'Marksheet')
   ]))
                  ],
                ),
              ),Expanded(child: Container(
                // color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
Column(
  children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
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
                 ),
      ),Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
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
                 ),
      ),
  ],
),

                  Padding(
              padding: const EdgeInsets.only(bottom: 20,top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Indicator(
                    color: Color(0xFF3A3665),
                    text: 'Scored 92',
                    size: 10,
                    isSquare: true,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Indicator(
                    color: Color(0xFFE1DFF6),
                    text: 'Total 100',
            
                    size: 10,
                    isSquare: true,
                  ),
                ],
              ),
            )
                  ],
                ),
              ))
             ,
            ],
          ),
        )
                )
        )
        ,Container(
          width: MediaQuery.of(context).size.width / 1.2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                                                            'Learning Schedule',
                                                            style: GoogleFonts.barlow(
                                                              fontSize: 18,
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.w600,
                                                               
                                                            ),
                                                            
                                                             ),
              Padding(
              padding: const EdgeInsets.only(top: 10),
          child: Container(
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
                   ),
              ),
            ],
          ),
        ), Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width/1.1,
            child: ListView.builder(
              itemCount: datalist.length,
              itemBuilder: (context,index){
              return Container(
                height: MediaQuery.of(context).size.height/8,
                width: MediaQuery.of(context).size.width/1.1,
                // color: Colors.red,
                child: Card(
                  
                  semanticContainer: true,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                   padding: const EdgeInsets.only(left: 8,right: 8),
                              child: Container(
                                width: 32,
                                child: Image.asset(datalist[index]["logo"]),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                   Text(
                                          datalist[index]["type"],
                                                            style: GoogleFonts.barlow(
                                                              fontSize: 14,
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.w600,
                                                               
                                                            ),
                                                            
                                                             ),   Text(
                                                         datalist[index]["reason"],
                                                            style: GoogleFonts.barlow(
                                                              fontSize: 14,
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.w400,
                                                               
                                                            ),
                                                            
                                                             ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/6,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8, right: 5),
                              child: Text(
                                            datalist[index]["time"],
                                                              style: GoogleFonts.barlow(
                                                                fontSize: 14,
                                                                color: Colors.black,
                                                                fontWeight: FontWeight.w700,
                                                                 
                                                              ),
                                                              
                                                               ),
                            ), 
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        )
        ],
        ),
           ));
            
           
  }
}

class _ChartData {
  _ChartData(this.x, this.y);
 
  final String x;
  final double y;
}
