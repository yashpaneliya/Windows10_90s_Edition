import 'package:flutter/material.dart';
import 'package:windows10_1990/homepage.dart';

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
    'Syatem Information',
    'About'
  ];

  List<IconData> secondIcons = [
    Icons.menu,
    Icons.file_upload,
    Icons.settings,
    Icons.help,
    Icons.info_outline,
    Icons.developer_mode
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
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
                return InkWell(
                  onTap: () {
                    setState(() {
                      viewClippy = true;
                      viewMenu = false;
                      for (int i = 0; i < viewBools.length; i++)
                        viewBools[i] = false;
                      viewBools[index] = true;
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
    );
  }
}
