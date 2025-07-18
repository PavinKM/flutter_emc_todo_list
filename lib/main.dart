import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  String displayText = "No Text Data";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [

            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Enter ur task')
                ),
              ),
            ),

            MaterialButton(onPressed: (){
              setState(() {
                  displayText = "Yes its working perfectly" ;
                });
              },
              child: Text('Click'),
              color: Colors.white,
              height: 50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
            ),

            Text(displayText)
        
          ], 
        )
      ),
    );
  }
}
