import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hybird_web/util/AlphaRevealRouter.dart';
import 'ui/Home.dart';
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
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer(Duration(seconds: 2), () {
       Navigator.of(context).push(AlphaRouter(HomePage()));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    if(_timer!=null){
      _timer.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            child: Image.asset(
              Asset.pathByName("wallpaper_bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              width: width,
              height: 200,
              child: Stack(
                children: [
                  Hero(
                    tag: "TitleBg",
                    child: ClipRect(
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
                          child: Container(color: Colors.white.withOpacity(0.2))),
                    ),
                  ),
                  Container(
                    width: width,
                    height: height,
                    child: Text(
                      "4K HD WallPaper",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.tealAccent,
                          fontSize: 125,
                          fontFamily: "SansitaSwashed"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
