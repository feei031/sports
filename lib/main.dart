import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.green,
      ),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            leading: Icon(Icons.directions_run),
            title: const Text(
                'Feel Free Sports',
            ),
            actions: <Widget>[
              SizedBox(
                width: 55,
                child: FlatButton(
                  child: Icon(Icons.search,color: Colors.white),
                  onPressed: (){
                    //押したときの動き
                  },
                ),
              ),
              SizedBox(
                width: 55,
                child: FlatButton(
                  child: Icon(Icons.more_vert,color: Colors.white),
                  onPressed: (){
                    //押したときの動き
                  },
                ),
              ),
            ],
          ),
        body: Container(),
      ),
    );
  }
}
