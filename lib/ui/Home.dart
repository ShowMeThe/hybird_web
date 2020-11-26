import 'dart:async';
import 'dart:html';
import 'dart:ui';
import 'dart:js' as js;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hybird_web/base/vm/ViewModelProvider.dart';
import 'package:hybird_web/base/vm/ViewModelProviders.dart';
import 'package:hybird_web/data/Source.dart';
import 'package:hybird_web/util/asset.dart';
import 'package:hybird_web/util/px.dart';
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
    var width = Px.matchWidth(context);
    var height = Px.matchHeight(context);
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
            height: Px.getTitleHeight(),
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
                    height: Px.getTitleHeight(),
                    child: Center(
                      child: Text(
                        "4K HD WallPaper",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.tealAccent,
                            fontSize: Px.getTitleSize(),
                            fontFamily: "SansitaSwashed"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: Px.getCardPaddingTop(),
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
                              topLeft: Radius.circular(Px.getCardRadius()),
                              topRight: Radius.circular(Px.getCardRadius()))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          controller: _scrollController,
                          itemBuilder: (context, position) {
                            return _buildView(context, position);
                          },
                          itemCount: Source.getCardList().length,
                          gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: Px.getWidth() / 4,
                              mainAxisSpacing: 20.0,
                              crossAxisSpacing: 10.0
                          ),
                        ),
                      )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildView(BuildContext context, int position) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.circular(Px.getImageCardRadius()),
        child: GestureDetector(
          onTap: () {
            print(Source.getCardList()[position].contentUrl);
            js.context.callMethod(
                "open", [Source.getCardList()[position].contentUrl]);
          },
          child: Column(
            children: [
              Container(
                decoration: ShapeDecoration(
                    image: DecorationImage(image: NetworkImage(Source.getCardList()[position].imageUrl),fit: BoxFit.fitWidth),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(Px.getImageCardRadius()),
                            topEnd: Radius.circular(Px.getImageCardRadius())))),
                height: 100,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  Source.getCardList()[position].name,
                  style: TextStyle(
                      fontFamily: "NerkoOne", color: Colors.blue, fontSize: Px.getImageCardTextSize()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
