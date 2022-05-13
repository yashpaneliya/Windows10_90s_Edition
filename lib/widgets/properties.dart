import 'package:flutter/material.dart';

bool proview = false;

class Properties extends StatefulWidget {
  @override
  _PropertiesState createState() => _PropertiesState();
}

class _PropertiesState extends State<Properties> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: proview,
      child: Container(
        color: Colors.grey,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            //1st Row
            Container(
              color: Colors.grey,
              //.fromRGBO(191,189, 189, 1),
              width: MediaQuery.of(context).size.width,
              height: 22,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    margin: EdgeInsets.all(1),
                    child: new Tab(
                      icon: new Image.asset("mypc.png"),
                    ),
                  ),
                  Container(
                    height: 20,
                    //width: 20,
                    margin: EdgeInsets.all(1),
                    child: Text(
                      'System',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    width: 1395,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    color: Color.fromRGBO(191, 189, 189, 0.5),
                    child: Center(
                        child: Text(
                      '-',
                      style: TextStyle(fontSize: 16, fontFamily: 'segoeUi'),
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
                        child: Icon(
                      Icons.crop_square,
                      size: 14,
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
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'segoeUi'),
                      )),
                    ),
                    onTap: () {
                      setState(() {
                        //close browser
                        proview = false;
                      });
                    },
                  ),
                ],
              ),
            ),

            Container(
                height: 30,
                color: Colors.grey,
                width: MediaQuery.of(context).size.width,
                child: Row(children: [
                  Container(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        height: 15,
                        child: Tab(
                          icon: new Image.asset("back.png"),
                          //iconMargin: EdgeInsets.all(4),
                        ),
                      )
                    ],
                  )),
                  Container(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        height: 15,
                        child: Tab(
                          icon: new Image.asset("next.png"),
                          //iconMargin: EdgeInsets.all(4),
                        ),
                      )
                    ],
                  )),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          height: 20,
                          child: Tab(
                            icon: new Image.asset("backk.png"),
                            //iconMargin: EdgeInsets.all(4),
                          ),
                        )
                      ],
                    ),
                  ),
                  // SecondRow
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 1355,
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.grey[200],
                          )),
                          child: Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                margin: EdgeInsets.all(1),
                                child: new Tab(
                                  //iconMargin: EdgeInsets.all(10),
                                  icon: new Image.asset("mypc.png"),
                                ),
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                margin: EdgeInsets.all(1),
                                child: Text(
                                  ' > ',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Container(
                                height: 20,
                                margin: EdgeInsets.all(1),
                                padding: EdgeInsets.only(top: 1),
                                child: Text(
                                  ' Control Panel > All Control Panel Items > System ',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Container(
                                  height: 15,
                                  padding: EdgeInsets.only(left: 1000),
                                  child: Image.asset('down.png')),
                              Container(
                                height: 15,
                                padding: EdgeInsets.only(left: 5),
                                child: Image.asset('reload.png'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          //padding: EdgeInsets.only(left: 15),
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.grey[200],
                          )),
                          child: Row(
                            children: [
                              Container(
                                height: 18,
                                margin: EdgeInsets.only(left: 5),
                                padding: EdgeInsets.all(1),
                                child: Image.asset('search.png'),
                              ),
                              Container(
                                height: 15,
                                margin: EdgeInsets.only(left: 4),
                                child: Text(
                                  'Search D..',
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ])),

            Container(
              width: 1525,
              height: 700,
              //padding: EdgeInsets.only(right: 200),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    // padding: EdgeInsets.only(right: 100),
                    width: 250,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Control Panel Home'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        quickacc(
                            context, 'defender.jpeg', 'Device Manger'),
                        quickacc(
                            context, 'defender.jpeg', 'Remote Settings'),
                        quickacc(
                            context, 'defender.jpeg', 'System Protection'),
                        quickacc(context, 'defender.jpeg',
                            'Advance System Settings'),
                      ],
                    ),
                  ),
                  Container(
                    height: 700,
                    width: 1200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Container(
                          height: 25,
                          child:
                              Text('View basic infprmation about your computer'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          //height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(),
                              Container(
                                //padding: EdgeInsets.only(),
                                child: Text(
                                  'Windows Edition',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),

                              Container(
                                height: 50,
                                child: Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.only(left: 20),
                                              height: 20,
                                              child: Text(
                                                'Windows 10 Home',
                                                style: TextStyle(fontSize: 12),
                                              )),
                                          SizedBox(height: 5),
                                          Container(
                                              padding: EdgeInsets.only(left: 20),
                                              height: 20,
                                              child: Text(
                                                '1995 Flutron Corporation. All rights reserved.',
                                                style: TextStyle(fontSize: 12),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      //height: 100,
                                      padding:
                                          EdgeInsets.only(left: 870, bottom: 30),
                                      child: Image.asset('windowss.png'),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Container(
                                //padding: EdgeInsets.only(),
                                child: Text(
                                  'Windows Edition',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              //Second
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 175,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // systemSupp(context, 'Manufacture:', 'Flutron Inc'),
                                    // SizedBox(height: 5),
                                    // systemSupp(context, 'Model:', 'Flutron F-X360'),
                                    // SizedBox(height: 5),
                                    // systemSupp(context, 'Processor:', 'Intel 80386DX'),
                                    // SizedBox(height: 5),
                                    // systemSupp(context, 'Installed memory (RAM):', ' 4 MB '),
                                    // SizedBox(height: 5),
                                    // systemSupp(context, 'System type', '16-bit Operating System'),
                                    // SizedBox(height: 5),

                                    Container(
                                        child: Row(
                                      children: [
                                        systemSupp(
                                          context,
                                          'Manufacture:',
                                        ),
                                        SizedBox(
                                          width: 120,
                                        ),
                                        systemSup(context, 'Flutron Inc'),
                                      ],
                                    )),

                                    Container(
                                        child: Row(
                                      children: [
                                        systemSupp(
                                          context,
                                          'Model:',
                                        ),
                                        SizedBox(
                                          width: 150,
                                        ),
                                        systemSup(context, 'Flutron F-X360'),
                                      ],
                                    )),
                                    Container(
                                        child: Row(
                                      children: [
                                        systemSupp(
                                          context,
                                          'Processor:',
                                        ),
                                        SizedBox(
                                          width: 130,
                                        ),
                                        systemSup(context, 'Intel 80386DX'),
                                      ],
                                    )),

                                    Container(
                                        child: Row(
                                      children: [
                                        systemSupp(
                                          context,
                                          'Installed memory (RAM):',
                                        ),
                                        SizedBox(
                                          width: 52,
                                        ),
                                        systemSup(context, ' 4 MB '),
                                      ],
                                    )),
                                    Container(
                                        child: Row(
                                      children: [
                                        systemSupp(
                                          context,
                                          'System type:',
                                        ),
                                        SizedBox(
                                          width: 120,
                                        ),
                                        systemSup(
                                            context, '16-bit Operating System'),
                                      ],
                                    ))
                                  ],
                                ),
                              ),

                              Divider(),
                              Container(
                                //padding: EdgeInsets.only(),
                                child: Text(
                                  'Computer name, domian, and workgroup settings',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              //third
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 175,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    systemSupp(
                                                      context,
                                                      'Computer name:',
                                                    ),
                                                    SizedBox(width: 100),
                                                    systemSup(context,
                                                        'DESKTOP-DIQRAIP'),
                                                  ],
                                                )),
                                                Container(
                                                    child: Row(
                                                  children: [
                                                    systemSupp(
                                                      context,
                                                      'Full computer name:',
                                                    ),
                                                    SizedBox(width: 80),
                                                    systemSup(context,
                                                        'DESKTOP-DIQRAIP'),
                                                  ],
                                                )),
                                                Container(
                                                    child: Row(
                                                  children: [
                                                    systemSupp(
                                                      context,
                                                      'Workgroup:',
                                                    ),
                                                    SizedBox(width: 129),
                                                    systemSup(
                                                        context, 'WORKGROUP'),
                                                  ],
                                                ))
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),

                                    // Container(

                                    //   height: 100,
                                    //   padding: EdgeInsets.only(left: 1100,bottom: 50),
                                    //   child: quickacc(context, 'images/search.png', 'Device Manger'),
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget quickacc(context, image, name) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    //alignment: Alignment.centerLeft,
    child: Row(
      children: [
        Container(
          height: 16,
          //margin: EdgeInsets.only(left: 10),
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

Widget systemSupp(context, namee) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    //alignment: Alignment.centerLeft,
    child: Row(
      children: [
        Container(
          height: 16,
          padding: EdgeInsets.only(left: 20),
          //margin: EdgeInsets.only(left: 10),
          //padding: EdgeInsets.all(1),
          child: Text(
            namee,
            style: TextStyle(fontSize: 12),
          ),
        ),
        // Container(
        //   height: 20,
        //   margin: EdgeInsets.only(left: 150),
        //   //padding: EdgeInsets.only(top:1),
        //   child: Text(
        //     name,
        //     style: TextStyle(fontSize: 12),
        //   ),
        // ),
      ],
    ),
  );
}

Widget systemSup(context, name) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    //alignment: Alignment.centerLeft,
    child: Row(
      children: [
        Container(
          height: 20,
          margin: EdgeInsets.only(left: 100),
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
