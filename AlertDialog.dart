import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello World Travel Title",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hello World Travel"),
              backgroundColor: Colors.tealAccent[400],
            ),
            body: Builder(builder: (context)=> SingleChildScrollView(
              child: Center(
                  child: Column(
                children: [
                  Text(
                    'Hello World Travel',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.blue[800],
                    ),
                  ),
                  Text('My Name is Hello'),
                  Image.network(
                    'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg',
                    height: 350,
                    width: 350,
                  ),
                  Text('hahaha'),
                  ElevatedButton(onPressed: ()=> contactUs(context), child: Text('Press'),)
                ],
              )),
            ))));
  }
}
void contactUs(BuildContext context){
  showDialog(context: context,
      builder: (BuildContext context){
    return AlertDialog(
      title: Text('Contact Us'),
      content: TextButton(child: Text('Mail us at robinroy@ieee.org',style: TextStyle(color: Colors.black,)),onPressed: ()=> true,),
      actions: <Widget>[
       TextButton(onPressed: ()=> Navigator.of(context).pop(), child: Text('Close'))
      ],

    );

      },
      barrierDismissible: false,
  );
}
