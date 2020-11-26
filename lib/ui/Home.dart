import 'dart:async';
import 'dart:html';
import 'dart:ui';
import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:hybird_web/base/vm/ViewModelProvider.dart';
import 'package:hybird_web/base/vm/ViewModelProviders.dart';
import 'package:hybird_web/data/Source.dart';
import 'package:hybird_web/util/asset.dart';
import 'vm/HomeViewModel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider(
      viewModel: HomeViewModel(),
      body: HomeBodyPage(),
    );
  }
}

class HomeBodyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBodyPage> with TickerProviderStateMixin {
  AnimationController _alphaController;
  Animation _alphaAnimation;

  AnimationController _bottomController;
  Animation _bottomAnimation;

  Timer _timer;

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _alphaController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    _alphaAnimation = Tween(begin: 0.0, end: 1.0).animate(_alphaController);
    _alphaController.forward();

    _bottomController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    _bottomAnimation =
        Tween(begin: Offset(0, 1), end: Offset.zero).animate(_bottomController);
    _timer = Timer(Duration(milliseconds: 450), () {
      _bottomController.forward();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _bottomController.dispose();
    _alphaController.dispose();
    super.dispose();
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
          Container(
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
                FadeTransition(
                  opacity: _alphaAnimation,
                  child: Container(
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
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: 300,
            left: 0,
            right: 0,
            bottom: 0,
            child: SlideTransition(
              position: _bottomAnimation,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45.0),
                            topRight: Radius.circular(45.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        controller: _scrollController,
                        itemBuilder: (context,position){
                           return _buildView(context,position);
                        },
                        itemCount: Source.getCardList().length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 2
                        ),
                      ),
                    )
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildView(BuildContext context, int position) {
    return GestureDetector(
      onTap: (){
        print(Source.getCardList()[position].contentUrl);
        js.context.callMethod("open",[Source.getCardList()[position].contentUrl]);
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            child: Column(
                children: [
                    Image.network(Source.getCardList()[position].imageUrl,fit:BoxFit.cover,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(Source.getCardList()[position].name,style: TextStyle(fontFamily: "NerkoOne",color: Colors.blue,fontSize: 22),),
                    )
                ],
            ),
        ),
      ),
    );
  }
}
