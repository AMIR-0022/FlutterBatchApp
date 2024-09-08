
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List dataList = ['Lahore', 'Multan', 'Bahawalpur', 'karachi'];

  String dropDownValue = 'Lahore';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        backgroundColor: Colors.blue,
        actions: [
          PopupMenuButton(
            // iconColor: Colors.white,
            // icon: Icon(Icons.settings),
            // color: Colors.blue,
            //offset: Offset(0, 50),
            onSelected: (value) {
              switch(value){
                case 'setting': {
                  print('setting');
                }
                case 1: {
                  print('share');
                }
                case 2: {
                  print('logout');
                }
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 'setting',
                  child: Text('Setting'),
                  // onTap: () {
                  // },
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text("Share")
                ),
                 PopupMenuItem(
                  value: 2,
                  child: Text("Logout")
                )
              ];
            },
          )
        ],
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              //barrierDismissible: false,
              //barrierColor: Color.fromARGB(55, 7, 106, 255),
              context: context, 
              builder: (context) {

                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      width: double.infinity,
                      height: 200,
                      color: Colors.white,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(top: -10, child: Icon(Icons.face, size: 50,))
                        ],
                      ),
                    ),
                    //Positioned(top: 200, child: Icon(Icons.face, size: 50,))
                  ]
                );

                // return const Dialog(
                //   child: Padding(
                //     padding: EdgeInsets.all(20),
                //     child: Column(
                //       mainAxisSize: MainAxisSize.min,
                //       children: [
                //         Text('Title'),
                //         Text('Subtitle'),
                //       ],
                //     ),
                //   ),
                // );

                  // return SimpleDialog(
                  //   title: const Text('Select Option'),
                  //   children: [
                  //     SimpleDialogOption(child: Text('Option 1'), onPressed: (){
                  //       Navigator.pop(context);
                  //     },),
                  //     SimpleDialogOption(child: Text('Option 2'), onPressed: (){},),
                  //     SimpleDialogOption(child: Text('Option 3'), onPressed: (){},),
                  //   ],
                  // );

                // return AlertDialog(
                //   icon: Icon(Icons.face),
                //   title: Text('Delete'),
                //   content: Text('Are you sure want to delete? the quick brown fox jumps over the laz dog'),
                //   actionsAlignment: MainAxisAlignment.start,
                //   actions: [
                //     OutlinedButton(onPressed: () {
                //       Navigator.pop(context);
                //     }, child: Text('Cancel')),
                //     OutlinedButton(onPressed: () {}, child: Text('yes')),
                //   ],
                // );
              },
            );
          }, 
          child: const Text("Show Dialog")
        ),
      ),

      // body: Center(
      //   child: Container(
      //     width: 220,
      //     padding: EdgeInsets.all(4),
      //     decoration: BoxDecoration(
      //       border: Border.all(width: 2),
      //       borderRadius: BorderRadius.circular(12)
      //     ),
      //     child: DropdownButton(
      //       isExpanded: true,
      //       underline: const Text(''),
      //       // borderRadius: BorderRadius.circular(10),
      //       // dropdownColor: ,
      //       icon: Icon(Icons.keyboard_arrow_down),
      //       value: dropDownValue,
      //       items: dataList.map((item){
      //         return DropdownMenuItem(
      //           value: item,
      //           child: Text(item)
      //         );
      //       }).toList(),
      //       onChanged: (value) {
      //         dropDownValue = value.toString();
      //         setState(() {
      //         });
      //       },
      //       // items: const [
      //       //   DropdownMenuItem(
      //       //     value: 'Item 1',
      //       //     child: Text("Item 1"),
      //       //   ),
      //       //   DropdownMenuItem(
      //       //     value: 'Item 2',
      //       //     child: Text("Item 2"),
      //       //   ),
      //       //   DropdownMenuItem(
      //       //     value: 'Item 3',
      //       //     child: Text("Item 3"),
      //       //   ),
      //       // ], 
            
      //     ),
      //   ),
      // ),

    );
  }
}