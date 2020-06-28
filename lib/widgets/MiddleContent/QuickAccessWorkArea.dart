import 'package:flutter/material.dart';

bool thispcFolder = true;
bool thispcDriveC = true;

class QuickAccess extends StatefulWidget {
  @override
  _QuickAccessState createState() => _QuickAccessState();
}

class _QuickAccessState extends State<QuickAccess> {
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
              padding: EdgeInsets.only(bottom: 10),
              height: 25,
              width: 1535,
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 28),
                    //padding: EdgeInsets.only(top:1),
                    child: Text(
                      'Name',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 300),
                    //padding: EdgeInsets.only(top:1),
                    child: Text(
                      'Date modified',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 100),
                    //padding: EdgeInsets.only(top:1),
                    child: Text(
                      'Type',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),

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
                      'Folders',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            thispcFolder == true
                ? Container(
                    height: 170,
                    width: 1535,
                    // padding: EdgeInsets.only(right: 900),
                    child: Column(
                      children: [
                        mycomputer(
                            context, 'desktoppp.png', 'Desktop', 20),
                        mycomputerr(
                            context, 'downloadfolder.png', 'Downloads', 20),
                        mycomputerr(
                            context, 'document.png', 'Documents', 20),
                        mycomputer(
                            context, 'image.png', 'Pictures', 20),
                        mycomputer(
                            context, 'video.png', 'Videos', 20),
                      ],
                    ),
                  )
                : Container(),

            //myComputer
          ],
        ));
  }
}

Widget mycomputer(context, image, name, height) {
  return Container(
    height: height,

    width: 1535,
    margin: EdgeInsets.only(top: 10),
    child: Row(
      children: [
        Container(
          height: 20,

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
        Container(
          height: 20,
          margin: EdgeInsets.only(left: 300),
          //padding: EdgeInsets.only(top:1),
          child: Text(
            '6/28/2020 1:12 AM',
            style: TextStyle(fontSize: 12),
          ),
        ),
        Container(
          height: 20,
          margin: EdgeInsets.only(left: 100),
          //padding: EdgeInsets.only(top:1),
          child: Text(
            'System Folder',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    ),
  );
}

Widget mycomputerr(context, image, name, height) {
  return Container(
    height: height,
    width: 1535,

    margin: EdgeInsets.only(top: 10),
    child: Row(
      children: [
        Container(
          height: 25,
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
        Container(
          height: 20,
          margin: EdgeInsets.only(left: 285),
          //padding: EdgeInsets.only(top:1),
          child: Text(
            '6/28/2020 1:12 AM',
            style: TextStyle(fontSize: 12),
          ),
        ),
        Container(
          height: 20,
          margin: EdgeInsets.only(left: 100),
          //padding: EdgeInsets.only(top:1),
          child: Text(
            'System Folder',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    ),
  );
}