import 'package:flutter/material.dart';
import 'package:windows10_1990/res/colors.dart';

class Clippy extends StatefulWidget {
  final width;
  final height;
  final color;

  const Clippy({Key key, this.width, this.height, this.color})
      : super(key: key);
  @override
  _ClippyState createState() => _ClippyState();
}

class _ClippyState extends State<Clippy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      color: widget.color,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20.0),
            width: 150.0,
            height: 150.0,
            child: Image.asset('clippy.png'),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 40.0, bottom: 40.0, left: 40.0, right: 40.0),
            child: Text(
              'Hey!! I\'m Clippy, your personal assistant.\nWould you like some assistance today?',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {},
                color: widget.color,
                elevation: 3.0,
                child: Text('Yes'),
              ),
              MaterialButton(
                onPressed: () {},
                color: widget.color,
                elevation: 3.0,
                child: Text('No'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
