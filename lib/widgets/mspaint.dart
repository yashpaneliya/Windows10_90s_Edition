import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'package:windows10_1990/main.dart';
import 'package:windows10_1990/res/colors.dart';
import 'package:windows10_1990/res/icons.dart';
import 'package:windows10_1990/widgets/msdos.dart';
import 'package:windows10_1990/widgets/startmenu.dart';

class MSPaint extends StatefulWidget {
  @override
  _MSPaintState createState() => _MSPaintState();
}

class _MSPaintState extends State<MSPaint> {
  bool fileState, editState, imageState, viewState, helpState;
  static Color selectedcolor = Colors.black;

  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.red,
    exportBackgroundColor: Colors.blue,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(() => print("Value changed"));
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Visibility(
      visible: viewBools[7],
      child: Container(
        width: screenWidth * 0.5,
        height: screenheight * 0.6,
        decoration: BoxDecoration(
            color: startMenuBack,
            border: Border.all(width: 5.0, color: Colors.grey)),
        child: Stack(children: [
          Column(
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
                        Image.asset('paint.png'),
                        Text(
                          'untitled - Paint',
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
                                viewBools[7] = false;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //menu
              _buildMenuBar(),
              //toopallete and canvas
              Row(
                children: [
                  Container(
                    color: startMenuBack,
                    width: 100.0,
                    height: 300.0,
                    child: toolbar(),
                  ),
                  Expanded(
                    child: Signature(
                      height: 300.0,
                      backgroundColor: white,
                      controller: _controller,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0, right: 15.0),
                child: Colorpallete(),
              ),
              Expanded(
                  child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(width: 3.0, color: bordergrey),
                        boxShadow: [
                          BoxShadow(color: Colors.black, offset: Offset(-2, -2))
                        ]),
                    child: Text('For any help go to help section.'),
                  )
                ],
              ))
            ],
          ),
          _buildFileOptions(), //all options
          _buildEditOptions(),
          _buildFormatOptions(),
          _buildViewOptions(),
          _buildHelpOptions(),
        ]),
      ),
    );
  }

  Widget _buildMenuBar() {
    return Container(
      color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 4,
            ),
            Row(
              children: <Widget>[
                InkWell(
                  child: Text(
                    'File',
                    style: TextStyle(fontFamily: 'segio ui', fontSize: 12),
                  ),
                  onTap: () {
                    setState(() {
                      fileState = true;
                      editState = false;
                      imageState = false;
                      viewState = false;
                      helpState = false;
                    });
                  },
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  child: Text(
                    'Edit',
                    style: TextStyle(fontFamily: 'segio ui', fontSize: 12),
                  ),
                  onTap: () {
                    setState(() {
                      fileState = false;
                      editState = true;
                      imageState = false;
                      viewState = false;
                      helpState = false;
                    });
                  },
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  child: Text(
                    'Image',
                    style: TextStyle(fontFamily: 'segio ui', fontSize: 12),
                  ),
                  onTap: () {
                    setState(() {
                      fileState = false;
                      editState = false;
                      imageState = true;
                      viewState = false;
                      helpState = false;
                    });
                  },
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  child: Text(
                    'View',
                    style: TextStyle(fontFamily: 'segio ui', fontSize: 12),
                  ),
                  onTap: () {
                    setState(() {
                      fileState = false;
                      editState = false;
                      imageState = false;
                      viewState = true;
                      helpState = false;
                    });
                  },
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  child: Text(
                    'Help',
                    style: TextStyle(fontFamily: 'segio ui', fontSize: 12),
                  ),
                  onTap: () {
                    setState(() {
                      fileState = false;
                      editState = false;
                      imageState = false;
                      viewState = false;
                      helpState = true;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFileOptions() {
    return Visibility(
      visible: (fileState == true) ? true : false,
      child: Positioned(
          top: 56,
          left: 0,
          child: Card(
            child: Container(
              width: 150,
              color: Color.fromRGBO(191, 189, 189, 0.5),
              child: Column(
                children: <Widget>[
                  _buildOptions('     New', 'CTRL+N  '),
                  SizedBox(
                    height: 2,
                  ),
                  _buildOptions("     New Window", 'CTRL+SHIFT+N  '),
                  SizedBox(
                    height: 2,
                  ),
                  _buildOptions("     Open", 'CTRL+O  '),
                  SizedBox(
                    height: 2,
                  ),
                  _buildOptions("     Save", 'CTRL+S  '),
                  SizedBox(
                    height: 2,
                  ),
                  _buildOptions("     Save As", 'CTRL+SHIFT+S  '),
                  Divider(),
                  _buildOptions("     Page Setup...", ' '),
                  SizedBox(
                    height: 2,
                  ),
                  _buildOptions("     Print...", 'CTRL+P  '),
                  Divider(),
                  _buildOptions("      Exit", ' '),
                  SizedBox(
                    height: 2,
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Widget _buildEditOptions() {
    return Visibility(
      visible: (editState == true) ? true : false,
      child: Positioned(
          top: 56,
          left: 26,
          child: Card(
            child: Container(
              width: 150,
              color: Color.fromRGBO(191, 189, 189, 0.5),
              child: Column(
                children: <Widget>[
                  _buildOptions('     Undo', 'CTRL+Z '),
                  Divider(),
                  _buildOptions("     Cut", 'CTRL+X '),
                  SizedBox(
                    height: 2,
                  ),
                  _buildOptions("     Copy", 'CTRL+C '),
                  SizedBox(
                    height: 2,
                  ),
                  _buildOptions("     Paste", 'CTRL+V '),
                  Divider(),
                  _buildOptions("     Search with bing...", 'CTRL+E '),
                  SizedBox(
                    height: 2,
                  ),
                  _buildOptions("     Find", 'CTRL+F '),
                  SizedBox(
                    height: 2,
                  ),
                  _buildOptions("     Find Next", 'SHIFT+F3 '),
                  SizedBox(
                    height: 2,
                  ),
                  _buildOptions("      Replace", 'CTRL+H '),
                  SizedBox(
                    height: 2,
                  ),
                  _buildOptions("      Go To..", 'CTRL+G '),
                  Divider(),
                  _buildOptions("      Select All", 'CTRL+A '),
                  SizedBox(
                    height: 2,
                  ),
                  _buildOptions("      Time/Date", 'F5 '),
                  SizedBox(
                    height: 2,
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Widget _buildFormatOptions() {
    return Visibility(
      visible: (imageState == true) ? true : false,
      child: Positioned(
          top: 56,
          left: 56,
          child: Card(
            child: Container(
              width: 100,
              color: Color.fromRGBO(191, 189, 189, 0.5),
              child: Column(
                children: <Widget>[
                  _buildOptions('     Add image', '  '),
                  SizedBox(
                    height: 2,
                  ),
                  _buildOptions("     Search image", '  '),
                  SizedBox(
                    height: 2,
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Widget _buildViewOptions() {
    return Visibility(
      visible: (viewState == true) ? true : false,
      child: Positioned(
          top: 56,
          left: 105,
          child: Card(
            child: Container(
              width: 100,
              color: Color.fromRGBO(191, 189, 189, 0.5),
              child: Column(
                children: <Widget>[
                  _buildOptions('     Zoom', '>  '),
                  SizedBox(
                    height: 2,
                  ),
                  _buildOptions("     Full Screen", '  '),
                  SizedBox(
                    height: 2,
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Widget _buildHelpOptions() {
    return Visibility(
      visible: (helpState == true) ? true : false,
      child: Positioned(
          top: 56,
          left: 139,
          child: Card(
            child: Container(
              width: 100,
              color: Color.fromRGBO(191, 189, 189, 0.5),
              child: Column(
                children: <Widget>[
                  _buildOptions('     View Help', '  '),
                  SizedBox(
                    height: 2,
                  ),
                  _buildOptions("     Send Feedback", '  '),
                  Divider(),
                  _buildOptions("     About Notepad", '  '),
                  SizedBox(
                    height: 2,
                  ),
                ],
              ),
            ),
          )),
    );
  }

  _buildOptions(String title, String trailing) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontSize: 10, fontFamily: 'segoe ui'),
        ),
        Text(
          trailing,
          style: TextStyle(fontSize: 10, fontFamily: 'segoe ui'),
        ),
      ],
    );
  }

  toolbar() {
    return GridView.builder(
        itemCount: 14,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return toolbarButton(toolbarIcons[index]);
        });
  }

  toolbarButton(IconData icon) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _controller.clear();
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 2.0, bottom: 2.0),
        decoration: BoxDecoration(
            color: normalgrey,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(2, 2),
              ),
            ],
            border: Border.all(width: 5.0, color: bordergrey)),
        child: Icon(icon),
      ),
    );
  }

  Colorpallete() {
    return Row(
      children: [
        Container(
          width: 55.0,
          height: 55.0,
          margin: EdgeInsets.only(right: 2.0, top: 5.0),
          decoration: BoxDecoration(
            color: normalgrey,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(-2, -2),
              ),
            ],
            // border: Border.all(width: 5.0, color: bordergrey),
          ),
          child: Center(
            child: Container(
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(color: selectedcolor, boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(10, 10),
                ),
              ]),
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(left: 15.0),
            width: 170.0,
            height: 40.0,
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(width: 2.0, color: Colors.grey),
                boxShadow: [
                  BoxShadow(color: Colors.black, offset: Offset(2, 2))
                ]),
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 18,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedcolor = coloroptions[index];
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 3.0, bottom: 3.0),
                      decoration:
                          BoxDecoration(color: coloroptions[index], boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                        )
                      ]),
                    ),
                  );
                })),
      ],
    );
  }
}
