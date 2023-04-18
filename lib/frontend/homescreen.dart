import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:schoolbee/constants/constants.dart';
import 'package:schoolbee/frontend/businfoscreen.dart';
import 'package:schoolbee/frontend/dashboard.dart';
import 'package:schoolbee/frontend/profilescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int selectedIndex = 0;  
    List<Widget> widgetScreen = <Widget>[  
  const DashBoard() ,
   const BusInfoScreen() ,
   const ProfileScreen()
  
  ];  
  
  void onItemTapped(int index) {  
    setState(() {  
      selectedIndex = index;  
    });  
  }  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:widgetScreen[selectedIndex] ,
      bottomNavigationBar:  BottomNavigationBar(  
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // ignore: prefer_const_literals_to_create_immutables
        items:  <BottomNavigationBarItem>[  
          const BottomNavigationBarItem(  
            icon:  FaIcon(FontAwesomeIcons.home),  
            label: 'Home'
       
          ),  
          const BottomNavigationBarItem(  
            icon: FaIcon(FontAwesomeIcons.bus),  
            label: 'Bus Info'
      
          ),  
          const BottomNavigationBarItem(  
            icon: FaIcon(FontAwesomeIcons.solidCircleUser), 
            label: 'Profile' 
         
          ),  
        ],  
        type: BottomNavigationBarType.fixed,  
        currentIndex: selectedIndex,  
        selectedItemColor: Constants.bottom_navbar_active_buttoncolor,  
        unselectedItemColor: Constants.bottom_navbar_disable_buttoncolor,
        iconSize: 20,  
        onTap: onItemTapped,  
        elevation: 0  
      ),  
    );  
  }
}