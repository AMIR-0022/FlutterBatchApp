
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleBottomNavPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Goolge Bottom Nav'),
        backgroundColor: Colors.blue,
      ),

      body: Center(child: Text('Page Content'),),

      bottomNavigationBar: Container(
        color: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: GNav(
          gap: 8,
          style: GnavStyle.google,
          color: Colors.white,
          activeColor: Colors.white,
          backgroundColor: Colors.blue,

          tabBorder: Border.all(width: 2, color: Colors.transparent),
          //tabActiveBorder: Border.all(width: 2, color: Colors.black),
          tabBackgroundColor: Colors.blue.shade400,
          tabBorderRadius: 10,
          duration: Duration(milliseconds: 1000),

          onTabChange: (value) => {
            print(value)
          },

          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          tabs: [
            GButton(icon: Icons.home, text: 'Home',),
            GButton(icon: Icons.search, text: 'Search',),
            GButton(icon: Icons.favorite, text: 'Favourite',),
            GButton(icon: Icons.settings, text: 'Setting',),
          ]
        ),
      ),
    );
  }
  
}