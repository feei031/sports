import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.greenAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(
            Icons.directions_run,
            color: Colors.white,
          ),
          title: const Text(
            'Lets feel free to play Sports',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '・気軽にスポーツを楽しもう',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              child: Image.network(
                'https://www.showakinen-koen.jp/wp-content/uploads/facility_photo_22.jpg',
              ),
            ),
            Text('・スポーツがしたいけどやる相手がいない'),
            Text('・運動不足で悩んでる'),
            Text('・フットサルの人数が足りない!'),
            Text(
              '↑こんなときL.F.F.Sなら共通のスポーツ好きな人と繋がれたり、気軽に大会の開催や人数補強もできちゃいます',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: RaisedButton(
                  child: Text('新規登録'),
                  onPressed: () {
                    //todo
                  },
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              primaryColor: Colors.greenAccent,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.greenAccent))),
          child: new BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 0,
            items: [
              new BottomNavigationBarItem(
                icon: new Icon(Icons.supervised_user_circle),
                title: new Text("Club"),
              ),
              new BottomNavigationBarItem(
                icon: new Icon(Icons.local_dining),
                title: new Text("Competition"),
              ),
              new BottomNavigationBarItem(
                icon: new Icon(Icons.search),
                title: new Text("Search"),
              ),
              new BottomNavigationBarItem(
                icon: new Icon(Icons.more_vert),
                title: new Text("option"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
