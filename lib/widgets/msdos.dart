import 'package:flutter/material.dart';
import 'package:windows10_1990/homepage.dart';
import 'package:windows10_1990/res/colors.dart';
import 'package:windows10_1990/widgets/startmenu.dart';

class MSDos extends StatefulWidget {
  @override
  _MSDosState createState() => _MSDosState();
}

class _MSDosState extends State<MSDos> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.5,
      height: screenheight * 0.6,
      decoration: BoxDecoration(
          color: startMenuBack,
          border: Border.all(width: 5.0, color: Colors.grey)),
      child: Column(
        children: [
          //header
          Container(
            color: darkBlue,
            height: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //title and logo
                Container(
                    child: Row(
                  children: [
                    Image.asset('dos.png'),
                    Text(
                      'MS-DOS Prompt',
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
                            viewBools[1] = false;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          //menu bar
          Container(
            child: Row(
              children: [
                dosMode(),
                DosImageButton(
                  image: 'i1.png',
                ),
                DosImageButton(image: 'i2.png'),
                DosImageButton(image: 'i3.png'),
                DosImageButton(image: 'i4.png'),
                DosImageButton(image: 'i5.png'),
                DosImageButton(image: 'i6.png'),
              ],
            ),
          ),
          //black screen
          Expanded(
              child: Container(
            width: screenWidth,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Flutter(R) Windows 10 90s\n\t(C)Copyright Team Flutron 2020',
                  style: TextStyle(color: white, letterSpacing: 2.0),
                ),
                Divider(),
                Row(
                  children: [
                    Text('C:\\Flutter>',
                        style: TextStyle(color: white, letterSpacing: 2.0)),
                    Container(
                      width: 200.0,
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '_',
                            hintStyle: TextStyle(color: white)),
                        style: TextStyle(color: white),
                      ),
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }

  Container dosMode() {
    return Container(
      width: 200.0,
      height: 40.0,
      decoration: BoxDecoration(
        border: Border.all(width: 5.0, color: greyBem),
        color: white,
      ),
      child: DropdownButton<String>(
        hint: Center(
            child: Text(
          'Auto',
          style: TextStyle(color: Colors.black),
        )),
        isExpanded: true,
        underline: Offstage(),
        elevation: 0,
        icon: EssentialButton(
          icon: Icons.arrow_drop_down,
        ),
        items: <String>['Auto', 'Manual'].map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text(value),
          );
        }).toList(),
        onChanged: (_) {},
      ),
    );
  }
}

class EssentialButton extends StatefulWidget {
  final icon;
  final onpressed;

  const EssentialButton({Key key, this.icon, this.onpressed}) : super(key: key);
  @override
  _EssentialButtonState createState() => _EssentialButtonState();
}

class _EssentialButtonState extends State<EssentialButton> {
  bool butOffset = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onpressed,
      child: Container(
        margin: EdgeInsets.only(right: 2.0),
        decoration: BoxDecoration(
            color: normalgrey,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: butOffset ? Offset(-2, -2) : Offset(2, 2),
              ),
            ],
            border: Border.all(width: 5.0, color: bordergrey)),
        child: Icon(widget.icon),
      ),
    );
  }
}

class DosImageButton extends StatefulWidget {
  final image;
  final onpressed;

  const DosImageButton({Key key, this.image, this.onpressed}) : super(key: key);
  @override
  _DosImageButtonState createState() => _DosImageButtonState();
}

class _DosImageButtonState extends State<DosImageButton> {
  bool butOffset = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          butOffset = !butOffset;
        });
      },
      onTapCancel: () {
        setState(() {
          butOffset = !butOffset;
        });
      },
      child: Container(
        height: 35.0,
        margin: EdgeInsets.only(right: 5.0),
        decoration: BoxDecoration(
            color: normalgrey,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: butOffset ? Offset(-2, -2) : Offset(2, 2),
              ),
            ],
            border: Border.all(width: 5.0, color: bordergrey)),
        child: Image.asset(
          widget.image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
