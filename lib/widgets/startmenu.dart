import 'package:flutter/material.dart';
import 'package:windows10_1990/homepage.dart';
import 'package:windows10_1990/widgets/properties.dart';

import '../main.dart';

class StartMenu extends StatefulWidget {
  final width;
  final height;
  final color;

  const StartMenu({Key key, this.width, this.height, this.color})
      : super(key: key);

  @override
  _StartMenuState createState() => _StartMenuState();
}

class _StartMenuState extends State<StartMenu> {
  List<String> icons = [
    'edge.png',
    'dos.png',
    'calc.png',
    'mine.png',
    'note.png',
    'settings.png',
    'clock.png',
    'paint.png',
    'fileexp.png'
  ];

  List<String> titles = [
    'Microsoft Edge',
    'MS-Dos',
    'Calculator',
    'Minesweaper',
    'Notepad',
    'Settings',
    'Clock',
    'Paint',
    'Flie Explorer'
  ];

  List<String> secondmenuItems = [
    'Programs',
    'Documents',
    'Settings',
    'Help',
    'System Information',
    'Shut Down'
  ];

  List<IconData> secondIcons = [
    Icons.menu,
    Icons.pages,
    Icons.settings,
    Icons.help,
    Icons.info_outline,
    Icons.power
  ];

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: viewMenu,
      child: Row(
        children: [
          Container(
            width: widget.width,
            height: widget.height,
            color: widget.color,
            child: GridView.builder(
                itemCount: icons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.25, crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        for (int i = 0; i < viewBools.length; i++) {
                          viewBools[i] = false;
                        }

                        viewBools[index] = true;
                        print("debug : $index => ${viewBools[index]}");
                        viewClippy = false;
                        viewMenu = false;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      width: widget.width * 0.2,
                      height: widget.height * 0.30,
                      color: Colors.blue.shade800,
                      child: Column(
                        children: [
                          Container(
                              width: widget.width * 0.1,
                              height: widget.height * 0.18,
                              child: Image.asset(icons[index])),
                          Text(
                            titles[index],
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Container(
            width: widget.width * 0.5,
            height: widget.height,
            color: Colors.black,
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    setState(() {
                      viewMenu = false;
                      viewClippy = false;
                      proview = true;
                    });
                  },
                  leading: Icon(
                    secondIcons[index],
                    color: Colors.white,
                  ),
                  title: Text(
                    secondmenuItems[index],
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
