import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Klee Wangi", style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0xFF8c062F),
        ),
        body: Stack(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
              colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ))),
            Center(
              child: SizedBox(
                width:
                    MediaQuery.of(context).size.width * 0.8, //80 persen layar
                height:
                    MediaQuery.of(context).size.height * 0.7, //70 persen layar
                child: Card(
                  elevation: 10,
                  child: Stack(children: <Widget>[
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4)),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://upload-os-bbs.mihoyo.com/upload/2020/11/08/10049934/bbc3b09300e3a99d572d0b455542e23b_3183546640511992708.png"),
                              fit: BoxFit.cover,
                            ))),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "クレのことが好きです。そして爆発にして。ドカンする",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xFFF56D5D), fontSize: 20),
                            ),
                            
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[

                                Text(
                                  
                                  "Posted on",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text(
                                  "December 11, 2020",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 12),
                                ),
                              ]),
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            )
          ],
        ));
  }
}
