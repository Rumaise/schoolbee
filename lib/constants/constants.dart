import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants{
  static Color mainbackgroundcolor = Color(0xFF0F0C29);
  static Color gradientcolortop = Color(0xFF24243E);
  static Color gradientcolorbottom = Color(0xFF302B63);
  static Color bottom_navbar_active_buttoncolor = Color(0xFF302B63);
    static Color bottom_navbar_disable_buttoncolor = Color(0xFF6A64AF);
    static Color circleavatarcolor = Color(0xFF3A3665);
    static Color buttoncolor = Color(0xFF2F286E);
    static Color starratingcolor = Color(0xFF6A64AF);

  static Widget timelineRoute(Map<String,dynamic> data){
    return   Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        height:16,
                        width: 16,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                        color:data["status"]?Color(0xFF36C065):Color(0xFFCAC7F4),
                            border:
                                Border.all(width: 1.5, color:data["status"]?Color(0xFF36C065):Color(0xFFCAC7F4))),
                      ),
               data["last_route"]?SizedBox(): Dash(
                          direction: Axis.vertical,
                          length: 80,
                          dashLength: 15,
                          dashColor: Color(0xFFCAC7F4)),
                     
                    ],
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(top: 8,left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                  Text(
                                    data["time"],
                                        style: GoogleFonts.barlow(
                                     fontSize: 18,
                                     color: Colors.black,
                                     fontWeight: FontWeight.w600,                                   
                                        ),
                                        
                                        
                                    ),
                                    Text(
                                    data["location"],
                                        style: GoogleFonts.barlow(
                                     fontSize: 18,
                                     color: Colors.black,
                                     fontWeight: FontWeight.w500,                                   
                                        ),
                                        
                                        
                                    ),
                      ],
                    ),
                  ))
      ],
    );
  }

  static Widget timelineAlerts(Map<String,dynamic> data){
    return   Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        height:16,
                        width: 16,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                        color:Color(0xFF6A64AF),
                            border:
                                Border.all(width: 1.5, color:Color(0xFF6A64AF))),
                      ),
               data["last_route"]?SizedBox(): Dash(
                          direction: Axis.vertical,
                          length: 80,
                          dashLength: 15,
                          dashColor: Color(0xFF6A64AF)),
                     
                    ],
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(top: 8,left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                  Text(
                                    data["time"],
                                        style: GoogleFonts.barlow(
                                     fontSize: 12,
                                     color: Colors.black,
                                     fontWeight: FontWeight.w600,                                   
                                        ),
                                        
                                        
                                    ),
                                    Text(
                                    data["status_type"],
                                        style: GoogleFonts.barlow(
                                     fontSize: 18,
                                     color: Colors.black,
                                     fontWeight: FontWeight.w600,                                   
                                        ),
                                        
                                        
                                        
                                    ),
                                    Text(
                                    data["reason"],
                                        style: GoogleFonts.barlow(
                                     fontSize: 16,
                                     color: Colors.black,
                                     fontWeight: FontWeight.w400,                                   
                                        ),
                                        
                                        
                                    )
                      ],
                    ),
                  ))
      ],
    );
  }


}