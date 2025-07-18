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

  List<String> taskList = [];

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
                      displayText = '' ;
                      taskList.add(textController.text);
                      textController.clear();
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

            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         child: Text("Hello"),
            //         padding: EdgeInsets.all(10),
            //       ),
            //     ),
                
            //     MaterialButton(onPressed: (){

            //       },
            //       child: Icon(
            //         Icons.delete,
            //         color: Colors.red,
            //         ),
            //     )
            //   ]
            // ),
        
            Flexible(
              child: ListView.builder(
                itemCount: taskList.length,
                itemBuilder: (context, index){
                    return Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(taskList[index]),
                            padding: EdgeInsets.all(10),
                          ),
                        ),
                        
                        MaterialButton(onPressed: (){
                          setState(() {
                            taskList.removeAt(index);
                          });
                          },
                          child: Icon(
                            Icons.delete,
                            color: Colors.red,
                            ),
                        )
                      ]
                    );
                  }
                ),
            ),
          ], 
        )
      ),
    );
  }
}
