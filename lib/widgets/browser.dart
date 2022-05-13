import 'package:flutter/material.dart';
import 'package:windows10_1990/main.dart';
import 'package:windows10_1990/widgets/msdos.dart';
import 'package:windows10_1990/widgets/startmenu.dart';

class Browser extends StatefulWidget {
  @override
  _BrowserState createState() => _BrowserState();
}

class _BrowserState extends State<Browser> {
  @override
  Widget build(BuildContext context) {
    print("ViewBools[0] : ${viewBools[0]}");
    return Visibility(
      visible: viewBools[0],
      child: Center(
        child: Container(
          height: 520,
          width: 600,
          color: Color.fromRGBO(191, 189, 189, 1),
          child: Column(
            children: <Widget>[
              _buildHeader(),
              SizedBox(
                height: 10,
              ),
              _buildMenu(),
              SizedBox(
                height: 15,
              ),
              _buildBody(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          children: <Widget>[
            Icon(Icons.web),
            SizedBox(
              width: 5,
            ),
            Text(
              'Google - Microsoft Edge 1.0',
              style: TextStyle(fontFamily: 'segio ui'),
            ),
            SizedBox(
              width: 270,
            ),
            Container(
              child: Row(
                children: [
                  EssentialButton(
                    icon: Icons.minimize,
                    onpressed: () {},
                  ),
                  EssentialButton(icon: Icons.crop_square, onpressed: () {}),
                  EssentialButton(
                    icon: Icons.close,
                    onpressed: () {
                      setState(() {
                        viewBools[0] = false;
                      });
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMenu() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 10,
        ),
        Column(
          children: <Widget>[
            Text('<'),
            SizedBox(
              height: 5,
            ),
            Text(
              'Back',
              style: TextStyle(fontFamily: 'segio ui'),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: <Widget>[
            Text('>'),
            SizedBox(
              height: 5,
            ),
            Text(
              'Forward',
              style: TextStyle(fontFamily: 'segio ui'),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: <Widget>[
            Icon(
              Icons.refresh,
              size: 19,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Refresh',
              style: TextStyle(fontFamily: 'segio ui'),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: <Widget>[
            Icon(
              Icons.close,
              size: 19,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Close',
              style: TextStyle(fontFamily: 'segio ui'),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: <Widget>[
            Icon(
              Icons.print,
              size: 19,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Print',
              style: TextStyle(fontFamily: 'segio ui'),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          color: Colors.white,
          width: 290,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'https://www.google.com/',
              style: TextStyle(fontFamily: 'segio ui'),
            ),
          ),
        ),
        SizedBox(
          width: 3,
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 15, bottom: 2),
      child: Container(
        height: 394,
        width: 580,
        color: Colors.white,
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                child: Image.asset(
                  'edge.png',
                  scale: 3,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 80,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54)),
                      width: 350,
                      height: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                          minLines: 1,
                          maxLines: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Search',
                          style:
                              TextStyle(fontSize: 12, fontFamily: 'segio ui'),
                        ),
                      ),
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
