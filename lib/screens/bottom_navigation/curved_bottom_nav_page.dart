
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_batch_app2/utils.dart';

class CurvedBottomNavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text('Curved Bottom Nav'),
        backgroundColor: Colors.blue,
      ),

      body: Container(
        color: Colors.red,
        child: Center(
          child: InkWell(
            onTap: () {
              Utils.toastMessage('message');
    
            //  ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text('Deleted Successfull'),
            //     action: SnackBarAction(label: 'UNDO', onPressed: () {
            //       ScaffoldMessenger.of(context).hideCurrentSnackBar();
            //     },),
              // )
            //  );
            },
            child: Text('Page Context')
          ),
        ),
      ),

      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        color: Colors.orange,
        backgroundColor: Colors.transparent,
        //buttonBackgroundColor: Colors.red,

        animationCurve: Curves.easeIn,
        animationDuration: Duration(milliseconds: 300),

        onTap: (value) {
         
        },

        items: [
          Icon(Icons.home, size: 30, color: Colors.white,),
          Icon(Icons.search, size: 30, color: Colors.white,),
          Icon(Icons.favorite, size: 30, color: Colors.white,),
          Icon(Icons.settings, size: 30, color: Colors.white,),
        ]
      ),
    );
  }
}