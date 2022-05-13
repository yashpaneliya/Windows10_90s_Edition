import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:windows10_1990/res/colors.dart';
import 'package:windows10_1990/responsivewidget.dart';
import 'package:windows10_1990/widgets/browser.dart';
import 'package:windows10_1990/widgets/calculator.dart';
import 'package:windows10_1990/widgets/clippy.dart';
import 'package:windows10_1990/widgets/minesweaper.dart';
import 'package:windows10_1990/widgets/msdos.dart';
import 'package:windows10_1990/widgets/mspaint.dart';
import 'package:windows10_1990/widgets/myComputer.dart';
import 'package:windows10_1990/widgets/notepad.dart';
import 'package:windows10_1990/widgets/properties.dart';
import 'package:windows10_1990/widgets/startmenu.dart';

import 'main.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return ResponsiveWidget(
      largeScreen: Scaffold(
        body: Container(
            width: screenWidth,
            height: screenHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('wallpaper.jpg'), fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                //empty area on desktop
                Positioned(
                  top: 0,
                  bottom: 40.0,
                  left: 0,
                  child: Container(
                    width: screenWidth,
                    height: screenHeight - 40.0,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          viewClippy = false;
                          viewMenu = false;
                        });
                      },
                    ),
                  ),
                ),
                //my pc
                Positioned(
                  top: 10.0,
                  left: 10.0,
                  child: GestureDetector(
                    onDoubleTap: () {
                      setState(() {
                        mypc = true;
                        viewClippy = false;
                        viewMenu = false;
                      });
                    },
                    child: mycomputer(),
                  ),
                ),

                //start menu
                Positioned(
                  top: screenHeight * 0.4,
                  left: 0.0,
                  bottom: 10.0,
                  child: StartMenu(
                    width: screenWidth * 0.35,
                    height: screenHeight * 0.7,
                    color: startMenuBack,
                  ),
                ),
                //clippy
                Visibility(
                  visible: viewClippy,
                  child: Positioned(
                    top: screenHeight * 0.4,
                    left: 40.0,
                    bottom: 40.0,
                    child: Clippy(
                      height: screenHeight * 0.6,
                      width: screenWidth * 0.3,
                      color: startMenuBack,
                    ),
                  ),
                ),
                //edge
                Positioned(
                  top: screenHeight * 0.2,
                  left: screenWidth * 0.3,
                  child: Visibility(
                    visible: viewBools[0],
                    child: Browser(),
                  ),
                ),
                //minesweaper
                Positioned(
                  top: screenHeight * 0.2,
                  left: screenWidth * 0.3,
                  child: Visibility(
                    visible: viewBools[3],
                    child: Minesweaper(),
                  ),
                ),
                //calculator
                Positioned(
                  child: Visibility(
                    visible: viewBools[2],
                    child: Calculator(),
                  ),
                ),
                //notepad
                Positioned(
                  top: screenHeight * 0.2,
                  left: screenWidth * 0.3,
                  child: Visibility(
                    visible: viewBools[4],
                    child: Notepad(),
                  ),
                ),
                //paint
                Positioned(
                  top: screenHeight * 0.1,
                  left: screenWidth * 0.3,
                  child: Visibility(
                    visible: viewBools[7],
                    child: MSPaint(),
                  ),
                ),
                //MsDos
                Visibility(
                  visible: viewBools[1],
                  child: Positioned(
                    top: screenHeight * 0.2,
                    left: screenWidth * 0.2,
                    child: MSDos(),
                  ),
                ),
                //MyCOmputer
                Positioned(
                  top:0,
                  left: 0,
                  child: MyComp(),
                ),
                //properties
              Positioned(
                  top:0,
                  left: 0,
                  child: Visibility(
                    visible: proview,
                    child: Properties(),
                  ),
                ),
                //bottom bar
                Positioned(
                  top: screenHeight - 40.0,
                  bottom: 0,
                  left: 0,
                  child: Container(
                    width: screenWidth,
                    height: 40.0,
                    decoration: BoxDecoration(color: bottomBarColor),
                    child: Row(
                      children: [
                        //windows logo
                        InkWell(
                          onHover: (value) {
                            if (mounted) {
                              setState(() {
                                logoBack = !logoBack;
                              });
                            } else {}
                          },
                          onTap: () {
                            setState(() {
                              viewMenu = !viewMenu;
                              viewClippy = false;
                            });
                          },
                          child: Container(
                            color: logoBack ? Colors.grey.shade400 : grey,
                            padding: EdgeInsets.all(5.0),
                            child: Image.asset('logo.png'),
                          ),
                        ),
                        InkWell(
                          // onTap: () {
                          //   setState(() {});
                          // },
                          child: Container(
                            width: screenWidth * 0.3,
                            color: Colors.grey,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      viewClippy = !viewClippy;
                                      viewMenu = false;
                                    });
                                  },
                                  child: Container(
                                      padding: EdgeInsets.only(
                                          left: 12.0,
                                          top: 8.0,
                                          bottom: 8.0,
                                          right: 10.0),
                                      child: Image.asset('clippy.png')),
                                ),
                                Container(
                                  width: 350.0,
                                  margin: EdgeInsets.only(top: 10.0),
                                  child: TextField(
                                    onTap: () {
                                      setState(() {
                                        viewMenu = false;
                                        viewClippy = !viewClippy;
                                      });
                                    },
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Ask help to Clippy',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.6,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              child: Icon(
                                Icons.volume_up,
                                color: white,
                                size: 20.0,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15.0),
                              child: GestureDetector(
                                child: Text(
                                  DateFormat('kk:mm').format(DateTime.now()) +
                                      '  PM',
                                  style: TextStyle(color: white),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                
              ],
            )),
      ),
    );
  }

  Column mycomputer() {
    return Column(
      children: [
        Container(
          color:
              mypc ? Colors.blue.shade900.withOpacity(0.8) : Colors.transparent,
          width: 70.0,
          height: 70.0,
          child: Image.asset('mypc.png'),
        ),
        Text(
          'My Computer',
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
