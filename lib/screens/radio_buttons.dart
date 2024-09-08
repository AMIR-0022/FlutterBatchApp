import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int selectedValue = 0;

  bool selectCheck = false;

  var titleLIst = ['Tea', 'Coffee'];
  var data = [
    {'title': "Tea", 'subTitle': "SubTitle", 'actions': "ClickMe"},
    {'title': "Coffee", 'subTitle': "SubTitle", 'actions': "ClickMe"},
    {'title': "Shake", 'subTitle': "SubTitle", 'actions': "ClickMe"},
    {'title': "Juice", 'subTitle': "SubTitle", 'actions': "ClickMe"},
  ];

  void temp(){
    var temp = data[0]['title'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button'),
        backgroundColor: Colors.blue,
      ),

      // body: CheckboxListTile(
      //   value: selectCheck, 
      //   activeColor: Colors.blue,
      //   checkColor: Colors.amber,
      //   controlAffinity: ListTileControlAffinity.leading,
      //   subtitle: Text('Subtitle'),
      //   secondary: Text('000'),
      //   title: Text('Math'),
      //   onChanged: (value) {
      //     selectCheck = !selectCheck;
      //     setState(() { });
      //   },
      // ),

      // body: Checkbox(
      //   value: selectCheck,
      //   onChanged: (value) {
      //     selectCheck = !selectCheck;
      //     setState(() { });
      //   },
      // ),

      // body: Column(
      //   children: [
      //     RadioListTile(
      //       value: 'dsf',
      //       groupValue: selectedValue,
      //       title: Text('Tea'),
      //       subtitle: Text('SubTitle'),
      //       secondary: Text('$selectedValue'),
      //       onChanged: (value) {
      //         selectedValue = value!;
      //         setState(() {});
      //       },
      //     ),
      //     RadioListTile(
      //       value: 2,
      //       groupValue: selectedValue,
      //       title: Text('Coffee'),
      //       subtitle: Text('SubTitle'),
      //       secondary: Text('$selectedValue'),
      //       onChanged: (value) {
      //         selectedValue = value!;
      //         setState(() {});
      //       },
      //     ),
      //   ],
      // ),

      // body: Radio(
      //   value: 1,
      //   groupValue: selectedValue,
      //   //activeColor: Colors.red,
      //   //fillColor: WidgetStateProperty.all(Colors.red),
      //   fillColor: WidgetStateProperty.resolveWith((states) {
      //     if(states.contains(WidgetState.selected)){
      //       return Colors.red;
      //     } else {
      //       return Colors.green;
      //     }
      //   },),
      //   onChanged: (value) {
      //     selectedValue = value!;
      //     setState(() { });
      //   },
      // ),

      // body: CheckboxListTile(
      //   controlAffinity: ListTileControlAffinity.leading,
      //   checkColor: Colors.red,
      //   activeColor: Colors.amber,
      //   fillColor: WidgetStatePropertyAll(Colors.green),
      //   value: selectCheck,
      //   onChanged: (value) {
      //     selectCheck = !selectCheck;
      //     setState(() {

      //     });
      //   },
      // ),

      // body: Checkbox(
      //   value: selectCheck,
      //   onChanged: (value) {
      //     selectCheck = !selectCheck;
      //     setState(() {

      //     });
      //   },
      //   ),

      // body: Column(
      //   children: [
      //     RadioListTile(
      //       fillColor: WidgetStateProperty.resolveWith((states) {
      //         if(states.contains(MaterialState.selected)){
      //           return Colors.green;
      //         } else {
      //           return Colors.red;
      //         }
      //       },),

      //       value: 1,
      //       groupValue: selectedValue,
      //       activeColor: Colors.red,
      //       title: Text('Tea'),
      //       subtitle: Text('Subtitle'),
      //       secondary: Text('1'),
      //       onChanged: (value) {
      //         selectedValue = value!;
      //         setState(() {});
      //       },
      //     ),
      //     RadioListTile(
      //       value: 2,
      //       groupValue: selectedValue,
      //       title: Text('Coffee'),
      //       subtitle: Text('SubTitle'),
      //       secondary: Text('2'),
      //       onChanged: (value) {
      //         selectedValue = value!;
      //         setState(() {});
      //       },
      //     ),
      //     RadioListTile(
      //       value: 3,
      //       groupValue: selectedValue,
      //       title: Text('Tea'),
      //       subtitle: Text('Subtitle'),
      //       secondary: Text('3'),
      //       onChanged: (value) {
      //         selectedValue = value!;
      //         setState(() {});
      //       },
      //     ),
      //     RadioListTile(
      //       value: 4,
      //       groupValue: selectedValue,
      //       title: Text('Tea'),
      //       subtitle: Text('Subtitle'),
      //       secondary: Text('4'),
      //       onChanged: (value) {
      //         selectedValue = value!;
      //         setState(() {});
      //       },
      //     ),
      //   ],
      // ),

      // body: Transform.scale(
      //   scale: 2,
      //   child: Radio(
      //     value: 1  ,
      //     activeColor: Colors.blue,
      //      groupValue: selectedValue,
      //      onChanged: (value) {
      //       selectedValue = 1;
      //       setState(() { });
      //       },
      //     ),
      // ),
    );
  }
}
