import 'package:flutter/material.dart';
import 'package:flutter_batch_app2/screens/temp.dart';
import 'package:flutter_batch_app2/screens/radio_buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //unselectedWidgetColor:Colors.white
      ),
      home: RadioButton(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('M Home Page'),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              //barrierDismissible: false,
              //barrierColor: const Color.fromARGB(75, 255, 193, 7),
              
              context: context, builder: (context) {
              return Stack(
                // overflow: Overflow.visible,
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    width: double.infinity,
                    height: 200,
                    color: Colors.grey.shade200,
                  ),
                ]
              );
            },);

            // showDialog(context: context, builder: (context) {
            //   return Dialog(
            //     child: Column(
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //       Text('this is dilog title'),
            //       Text('this is dilog title'),
            //       Text('this is dilog title'),
            //       Text('this is dilog title'),
            //       Text('this is dilog title'),
            //     ],),
            //   );
            // },);

            // showDialog(context: context, builder: (context) {
            //   return SimpleDialog(
            //     title: Text("Simple Dialog"),
            //     children: [
            //       Text('this is option of simple dialog'),
            //       SimpleDialogOption(child: Text('option 1'), onPressed: () {
            //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Option 1")));
            //         Navigator.pop(context);
            //       },)
            //     ],
            //   );
            // },);

            // showDialog(context: context, builder: (context) {
            //   return const AlertDialog(
            //     icon: Icon(Icons.home),
            //     title: Text('this is title of dialog'),
            //     content: Text('this is content of the alert dialog'),
            //     actionsAlignment: MainAxisAlignment.start,
            //     actions: [
            //       Text('Done'),
            //       Text('Cancel'),
            //     ],
            //   );
            // },);
          },
          child: const Text("Show Dialog"),
        ),
      )
    );
  }
}
