import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timelines/timelines.dart';

class RouteScreen extends StatefulWidget {
  const RouteScreen({super.key});

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Container(
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width,
             decoration:  const BoxDecoration(
              borderRadius: BorderRadius.only(
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.arrow_back_ios,color: Colors.black,size: 29,),
                          Text(
                                'Route Status',
                                style: GoogleFonts.barlow(
                                  fontSize: 25,
                                      color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  
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
              height: MediaQuery.of(context).size.height/1.5,
              width: MediaQuery.of(context).size.width/2,
              color: Colors.red,
              
              child: Timeline.tileBuilder(
                   theme: TimelineThemeData(
            nodePosition: 0,
            color: Color(0xff989898),
            indicatorTheme: IndicatorThemeData(
              position: 0,
              size: 20.0,
            ),
            connectorTheme: ConnectorThemeData(
              thickness: 2.5,
            ),
          ),
                shrinkWrap: true,        

                builder: TimelineTileBuilder.connected(
                  contentsAlign: ContentsAlign.basic,
                  contentsBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 26,bottom: 26),
              child: Text('Timeline Event $index'),
                  ),
                  itemCount: 10,
                  indicatorBuilder: (context,index){
                    
                  }
                ),
              
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}