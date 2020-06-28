import 'package:flutter/material.dart';

import '../homepage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Tween _tween;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {
            setState(() {
              if (status == AnimationStatus.completed) {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              }
            });
          });
    _tween = Tween<double>(begin: 30.0, end: 300.0);
    _animation = _tween.animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
              children:[ CustomPaint(
          painter: Back(),
                child: Container(),
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.6),
                child: Text('Starting Windows...',style: TextStyle(fontSize:20.0),),
              ),
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.4,top:20.0),
                height: 30.0,
                alignment: Alignment.center,
                width: _animation.value,
                decoration: BoxDecoration(
                  color: Colors.blue.shade800,
                ),
                child: _animation.value > 280.0
                    ? Text(
                        'Finished...'.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3.0),
                      )
                    : Offstage(),
              ),
            ],
          )
        ],
      ),
    );
  }
}



class Back extends CustomPainter{
  @override
  void paint(Canvas canvas,Size size){
    final width=size.width;
    final height=size.height;
    
    Path background=Path();
    Paint pt=Paint();
    
    pt.color=Colors.white;
    background.addRect(Rect.fromLTRB(0,0,width,height));
    canvas.drawPath(background,pt);
    
    Path p1=Path();
    pt.color=Colors.red;
    p1.moveTo(width*0.4,height*0.090);
    p1.lineTo(width*0.48,height*0.080);
    p1.lineTo(width*0.48,height*0.225);
    p1.lineTo(width*0.4,height*0.205);
    p1.close();
    canvas.drawPath(p1,pt);
    
    
    Path p2=Path();
    pt.color=Colors.green;
    p2.moveTo(width*0.5,height*0.075);
    p2.lineTo(width*0.6,height*0.05);
    p2.lineTo(width*0.6,height*0.25);
    p2.lineTo(width*0.5,height*0.225);
    p2.close();
    canvas.drawPath(p2,pt);
    
    Path p3=Path();
    pt.color=Colors.blue;
    p3.moveTo(width*0.4,height*0.22);
    p3.lineTo(width*0.48,height*0.245);
    p3.lineTo(width*0.48,height*0.390);
    p3.lineTo(width*0.4,height*0.345);
    p3.close();
    canvas.drawPath(p3,pt);
    
    Path p4=Path();
    pt.color=Colors.yellow;
    p4.moveTo(width*0.5,height*0.25);
    p4.lineTo(width*0.6,height*0.28);
    p4.lineTo(width*0.6,height*0.45);
    p4.lineTo(width*0.5,height*0.4 );
    p4.close();
    canvas.drawPath(p4,pt);
    
  }
  @override
  bool shouldRepaint(old){
    return old!=this;
  }
}