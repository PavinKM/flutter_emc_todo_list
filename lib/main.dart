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

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clinic Details'),
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
        ),
        body: Column(
          children: [

            Row(
              children: [
                Expanded(child: 
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: textController, //textEditingController
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Enter Clinic Details')
                      ),
                    ),
                  ),
                ),
                
                MaterialButton(onPressed: (){
                  setState(() {
                      displayText = textController.text ;
                    });
                  },
                  child: Text('Click'),
                  color: Colors.white,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ],
            ),

            Text(displayText),

            Row(
              children: [
                Text("Hello"),
                MaterialButton(onPressed: (){
                  
                },
                child: Icon(Icons.delete),
                )
              ],
            )
        
          ], 
        )
      ),
    );
  }
}
