import 'package:flutter/material.dart';
import 'package:windows10_1990/main.dart';
import 'package:windows10_1990/res/colors.dart';
import 'package:windows10_1990/widgets/msdos.dart';
import 'package:windows10_1990/widgets/startmenu.dart';

List<bool> b = [];

class Minesweaper extends StatefulWidget {
  @override
  _MinesweaperState createState() => _MinesweaperState();
}

class _MinesweaperState extends State<Minesweaper> {
  TextEditingController tc = TextEditingController(text: '0');
  bool smile = false;
  bool flag = false;
  bool sett = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 300; i++) {
      b.add(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    // bool b = false;
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Visibility(
      visible: viewBools[3],
      child: Container(
        width: screenWidth * 0.4,
        height: screenHeight * 0.7,
        color: startMenuBack,
        child: Column(
          children: [
            //header
            Container(
              color: Colors.grey,
              height: 30.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //title and logo
                  Container(
                      child: Row(
                    children: [
                      Image.asset('mine.png'),
                      Text(
                        'Minesweaper',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: white,
                            fontSize: 15.0),
                      )
                    ],
                  )),
                  //3 buttons
                  Container(
                    child: Row(
                      children: [
                        EssentialButton(
                          icon: Icons.minimize,
                          onpressed: () {},
                        ),
                        EssentialButton(
                            icon: Icons.crop_square, onpressed: () {}),
                        EssentialButton(
                          icon: Icons.close,
                          onpressed: () {
                            setState(() {
                              viewBools[3] = false;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //score bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                scoreBoard(screenWidth, screenHeight),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            sett = !sett;
                          });
                        },
                        child: centerButton(
                            screenHeight, Icons.settings, Colors.black, sett)),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          for (int i = 0; i < 300; i++) {
                            b[i]=false;
                          }
                          smile = !smile;
                          tc.text = '0';
                        });
                      },
                      child: centerButton(screenHeight,
                          Icons.sentiment_very_satisfied, Colors.yellow, smile),
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            flag = !flag;
                          });
                        },
                        child: centerButton(
                            screenHeight, Icons.flag, Colors.red, flag)),
                  ],
                ),
                scoreBoard(screenWidth, screenHeight),
              ],
            ),
            //game section
            Expanded(
              child: GridView.builder(
                  itemCount: 300,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 20),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          b[index] = true;
                          var temp = int.parse(tc.text);
                          temp = temp + 1;
                          tc.text = temp.toString();
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: b[index] ? tilegrey : Colors.grey,
                          border: Border.all(
                            width: b[index] ? 1.0 : 3.0,
                            color: b[index] ? white : Colors.grey.shade300,
                          ),
                        ),
                        child: Text(
                          b[index] ? '1' : ' ',
                          style: TextStyle(color: Colors.black, fontSize: 25.0),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget gameButton(bool b) {
    return Container(
      decoration: BoxDecoration(
        color: b ? normalgrey : Colors.grey,
        border: Border.all(
          width: b ? 1.0 : 3.0,
          color: b ? normalgrey : Colors.grey.shade300,
        ),
      ),
      child: Text(
        b ? '1' : '',
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Container scoreBoard(double screenWidth, double screenHeight) {
    return Container(
      alignment: Alignment.centerRight,
      width: screenWidth * 0.07,
      height: screenHeight * 0.07,
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(width: 3.0, color: normalgrey),
          boxShadow: [BoxShadow(color: Colors.black, offset: Offset(2, 2))]),
      child: TextField(        
        cursorColor: Colors.black,
        textDirection: TextDirection.rtl,
        controller: tc,
        decoration: InputDecoration(border: InputBorder.none),
        style: TextStyle(color: Colors.red, fontSize: screenHeight * 0.06),
      ),
    );
  }

  Container centerButton(
      double screenHeight, IconData icon, Color color, bool b) {
    return Container(
      width: 50.0,
      margin: EdgeInsets.only(
        right: 3.0,
      ),
      height: screenHeight * 0.06,
      decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(width: 3.0, color: normalgrey),
          boxShadow: [
            BoxShadow(
                color: Colors.black, offset: b ? Offset(-2, -2) : Offset(2, 2))
          ]),
      child: Icon(
        icon,
        color: color,
        size: screenHeight * 0.05,
      ),
    );
  }
}
