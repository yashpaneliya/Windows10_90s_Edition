import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:windows10_1990/widgets/startmenu.dart';

class Notepad extends StatefulWidget {
  @override
  _NotepadState createState() => _NotepadState();
}

class _NotepadState extends State<Notepad> {
  bool fileState, editState, formatState, viewState, helpState;
  bool notepadState = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 600,
      color: Color.fromRGBO(191, 189, 189, 1),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              _buildMenuBar(), //all details of menubar
              Padding(
                //white Page
                padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
                child: Container(
                  color: Colors.white,
                  height: 425,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    minLines: 10,
                    maxLines: 12,
                    onTap: () {
                      setState(() {
                        fileState = false;
                        editState = false;
                        formatState = false;
                        viewState = false;
                        helpState = false;
                      });
                    },
                    onChanged: (value) {
                      setState(() {
                        fileState = false;
                        editState = false;
                        formatState = false;
                        viewState = false;
                        helpState = false;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          _buildFileOptions(), //all options
          _buildEditOptions(),
          _buildFormatOptions(),
          _buildViewOptions(),
          _buildHelpOptions(),
        ],
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
            Row(
              children: <Widget>[
                Icon(
                  Icons.content_paste,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Untitled - Notepad',
                  style: TextStyle(fontFamily: 'segio ui'),
                ),
                SizedBox(
                  width: 360,
                ),
                Container(
                  height: 20,
                  width: 20,
                  color: Color.fromRGBO(191, 189, 189, 0.5),
                  child: Center(
                      child: Text(
                    '-',
                    style: TextStyle(fontSize: 16, fontFamily: 'segoe ui'),
                  )),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: 20,
                  width: 20,
                  color: Color.fromRGBO(191, 189, 189, 0.5),
                  child: Center(
                      child: Text(
                    '[]',
                    style: TextStyle(fontSize: 12, fontFamily: 'segoe ui'),
                  )),
                ),
                SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  child: Container(
                    height: 20,
                    width: 20,
                    color: Colors.red,
                    child: Center(
                        child: Text(
                      'X',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'segoe ui'),
                    )),
                  ),
                  onTap: () {
                    setState(() {
                      notepadState = false;
                      fileState = false;
                      editState = false;
                      formatState = false;
                      viewState = false;
                      helpState = false;
                      viewBools[4]=false;
                    });
                  },
                ),
              ],
            ),
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
                      formatState = false;
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
                      formatState = false;
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
                    'Format',
                    style: TextStyle(fontFamily: 'segio ui', fontSize: 12),
                  ),
                  onTap: () {
                    setState(() {
                      fileState = false;
                      editState = false;
                      formatState = true;
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
                      formatState = false;
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
                      formatState = false;
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
      visible: (formatState == true) ? true : false,
      child: Positioned(
          top: 56,
          left: 56,
          child: Card(
            child: Container(
              width: 100,
              color: Color.fromRGBO(191, 189, 189, 0.5),
              child: Column(
                children: <Widget>[
                  _buildOptions('     Word Wrap', '  '),
                  SizedBox(
                    height: 2,
                  ),
                  _buildOptions("     Font..", '  '),
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
                  _buildOptions("     Status Bar", '  '),
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
}
