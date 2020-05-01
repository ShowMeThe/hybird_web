import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hybird_web/util/Adapter.dart';

import 'util/asset.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ken's blog ",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Adapt.init(width.toInt());
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
              child: Image.asset(
            Asset.pathByName("gy_38.jpg"),
            fit: BoxFit.fill,
          )),
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(Adapt.px(15)),
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: Adapt.px(145),
                          child: Image.asset(Asset.pathByName("gy_1.jpg"),)),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
