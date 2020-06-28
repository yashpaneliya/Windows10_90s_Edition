import 'package:flutter/material.dart';
import 'package:windows10_1990/widgets/MiddleContent/ThisPCWorkArea.dart';

import 'QuickAccessWorkArea.dart';

bool quickAccess = false;
bool onedrive = false;
bool thispc = false;
bool network = false;

//bool thispcButton = true;

int select = 0;

class MiddleScreen extends StatefulWidget {
  @override
  _MiddleScreenState createState() => _MiddleScreenState();
}

class _MiddleScreenState extends State<MiddleScreen> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Container(
            width: 150,
            margin: EdgeInsets.only(bottom: 5),
            height: MediaQuery.of(context).size.height - 172,
            color: Colors.grey,
            child: Column(
              children: [
                InkWell(
                  onTap: () => setState(() {
                          select = 1;
                        }),
                    child: Container(
                      height: 24,
                    margin: EdgeInsets.only(top: 20),
                    color: select == 1 ? Colors.grey[600] : Colors.grey,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => setState(() {
                            quickAccess = !quickAccess;
                          }),
                          child: Container(
                            height: 12,
                            padding: EdgeInsets.only(left: 8),
                            child: quickAccess == true
                                ? Image.asset('down.png')
                                : Image.asset('nextAnotherr.png'),
                          ),
                        ),
                        Container(
                          height: 16,
                          margin: EdgeInsets.only(left: 10),
                          //padding: EdgeInsets.all(1),
                          child: Image.asset('QuickkAccess.png'),
                        ),
                        Container(
                          height: 20,
                          margin: EdgeInsets.only(left: 4),
                          //padding: EdgeInsets.only(top:1),
                          child: Text(
                            'Quick access',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                quickAccess == true
                    ? Column(children: [
                        quickacc(context, 'download.png', 'Downloads'),
                        quickacc(context, 'desktoppp.png', 'Desktop'),
                        quickacc(context, 'document.png', 'Documents'),
                        quickacc(context, 'image.png', 'Pictures'),
                      ])
                    : Container(),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () => setState(() {
                          onedrive = !onedrive;
                        }),
                        child: Container(
                          height: 12,
                          padding: EdgeInsets.only(left: 8),
                          child: onedrive == true
                              ? Image.asset('down.png')
                              : Image.asset('nextAnotherr.png'),
                        ),
                      ),
                      Container(
                        height: 16,
                        margin: EdgeInsets.only(left: 10),
                        //padding: EdgeInsets.all(1),
                        child: Image.asset('drive.png'),
                      ),
                      Container(
                        height: 20,
                        margin: EdgeInsets.only(left: 4),
                        //padding: EdgeInsets.only(top:1),
                        child: Text(
                          'One Drive',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => setState(() {
                    select = 0;
                  }),
                  child: Container(
                    height: 24,
                    color: select == 0 ? Colors.grey[600] : Colors.grey,
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => setState(() {
                            thispc = !thispc;
                          }),
                          child: Container(
                            height: 12,
                            padding: EdgeInsets.only(left: 8),
                            child: thispc == true
                                ? Image.asset('down.png')
                                : Image.asset('nextAnotherr.png'),
                          ),
                        ),
                        Container(
                          height: 16,
                          margin: EdgeInsets.only(left: 10),
                          //padding: EdgeInsets.all(1),
                          child: Image.asset('mycomp.png'),
                        ),
                        Container(
                          height: 20,
                          margin: EdgeInsets.only(left: 4, top: 1),
                          //padding: EdgeInsets.only(top:1),
                          child: Text(
                            'This PC',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                thispc == true
                    ? Column(children: [
                        quickacc(context, 'download.png', 'Downloads'),
                        quickacc(context, 'desktoppp.png', 'Desktop'),
                        quickacc(context, 'document.png', 'Documents'),
                        quickacc(context, 'image.png', 'Pictures'),
                        quickacc(context, 'video.png', 'Videos'),
                        quickacc(context, 'music.png', 'Music'),
                        quickacc(context, 'cdrive.png', 'Windows (C:)'),
                      ])
                    : Container(),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () => setState(() {
                          network = !network;
                        }),
                        child: Container(
                          height: 12,
                          padding: EdgeInsets.only(left: 8),
                          child: network == true
                              ? Image.asset('down.png')
                              : Image.asset('nextAnotherr.png'),
                        ),
                      ),
                      Container(
                        height: 16,
                        margin: EdgeInsets.only(left: 10),
                        //padding: EdgeInsets.all(1),
                        child: Image.asset('network.png'),
                      ),
                      Container(
                        height: 20,
                        margin: EdgeInsets.only(left: 4),
                        //padding: EdgeInsets.only(top:1),
                        child: Text(
                          'Network',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //WorkArea
          select == 0 ?
            ThisPcWorkArea() : Container(),
          select == 1 ? QuickAccess() : Container(),
        ],
      ),
    );
  }
}

Widget quickacc(context, image, name) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Row(
      children: [
        Container(
          height: 16,
          margin: EdgeInsets.only(left: 50),
          //padding: EdgeInsets.all(1),
          child: Image.asset(image),
        ),
        Container(
          height: 20,
          margin: EdgeInsets.only(left: 4),
          //padding: EdgeInsets.only(top:1),
          child: Text(
            name,
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    ),
  );
}
