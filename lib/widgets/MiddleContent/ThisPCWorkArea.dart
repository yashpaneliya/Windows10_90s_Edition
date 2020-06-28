import 'package:flutter/material.dart';

bool thispcFolder = true;
bool thispcDriveC = true;

class ThisPcWorkArea extends StatefulWidget {
  @override
  _ThisPcWorkAreaState createState() => _ThisPcWorkAreaState();
}

class _ThisPcWorkAreaState extends State<ThisPcWorkArea> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 172;

    return Container(
        padding: EdgeInsets.only(bottom: 5),
        height: MediaQuery.of(context).size.height - 172,
        width: width - 150,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
              padding: EdgeInsets.only(left: 10),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => setState(() {
                      thispcFolder = !thispcFolder;
                    }),
                    child: Container(
                      height: 12,
                      // padding: EdgeInsets.only(left: 8),
                      child: thispcFolder == true
                          ? Image.asset('down.png')
                          : Image.asset('nextAnotherr.png'),
                    ),
                  ),
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 4),
                    //padding: EdgeInsets.only(top:1),
                    child: Text(
                      'Folders (6)',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            thispcFolder == true
                ? Container(
                    height: 170,
                    //width: 500,
                    child: Column(
                      children: [
                        Container(
                            child: Row(
                          children: [
                            SizedBox(
                              width: 35,
                            ),
                            mycomputer(context, 'desktopfolder.png', 'Desktop'),
                            SizedBox(
                              width: 35,
                            ),
                            mycomputer(context, 'docfolder.png', 'Documents'),
                            SizedBox(
                              width: 35,
                            ),
                            mycomputer(context, 'music.png', 'Music'),
                            SizedBox(
                              width: 35,
                            ),
                            mycomputer(context, 'image.png', 'Pictures'),
                            SizedBox(
                              width: 35,
                            ),
                            mycomputer(context, 'video.png', 'Videos'),
                            SizedBox(
                              width: 35,
                            ),
                          ],
                        )),
                        Container(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 35,
                              ),
                              mycomputer(
                                  context, 'downloadfolder.png', 'Downloads'),
                              SizedBox(
                                width: 35,
                              ),
                              // mycomputer(
                              //     context, 'images/search.png', 'Desktop'),
                              // SizedBox(
                              //   width: 35,
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(),

            //myComputer

            Container(
              height: 30,
              padding: EdgeInsets.only(left: 10),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => setState(() {
                      thispcDriveC = !thispcDriveC;
                    }),
                    child: Container(
                      height: 12,
                      // padding: EdgeInsets.only(left: 8),
                      child: thispcDriveC == true
                          ? Image.asset('down.png')
                          : Image.asset('nextAnotherr.png'),
                    ),
                  ),
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 4),
                    //padding: EdgeInsets.only(top:1),
                    child: Text(
                      'Devices and drives (1)',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            thispcDriveC == true
                ? Container(
                    height: 90,
                    //width: 500,
                    child: Container(
                        child: Row(
                      children: [
                        SizedBox(
                          width: 35,
                        ),
                        mycomputer(context, 'cdrive.png', 'Windows(C:)'),
                        SizedBox(
                          width: 35,
                        ),
                      ],
                    )),
                  )
                : Container(),
          ],
        ));
  }
}

Widget mycomputer(context, image, name) {
  return Container(
    // color: Colors.blue,
    height: 70,
    width: 200,
    margin: EdgeInsets.only(top: 10),
    child: Row(
      children: [
        Container(
          height: 35,
          margin: EdgeInsets.only(left: 20),
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
