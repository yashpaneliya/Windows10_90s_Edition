import 'package:flutter/material.dart';

Widget thirdRow(context) {
  return Container(
    color: Color.fromRGBO(191, 189, 189, 1),
    width: MediaQuery.of(context).size.width,
    height: 85,
    child: Row(children: [
      Column(children: [
        Container(
            padding: EdgeInsets.only(top: 2),
            height: 65,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      height: 65,
                      //width: 100,
                      margin: EdgeInsets.all(1),
                      child: Column(
                        children: [
                          Container(
                            height: 30,
                            width: 60,
                            child: Tab(
                              icon: new Image.asset("property.png"),
                              //iconMargin: EdgeInsets.all(4),
                            ),
                          ),
                          Container(
                              height: 30,
                              width: 50,
                              child: Text(
                                'properties',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )),
                        ],
                      )),
                  Container(
                      height: 65,
                      //width: 100,
                      margin: EdgeInsets.all(1),
                      child: Column(
                        children: [
                          Container(
                            height: 30,
                            width: 60,
                            child: Tab(
                              icon: new Image.asset("open.png"),
                              //iconMargin: EdgeInsets.all(4),
                            ),
                          ),
                          Container(
                              height: 30,
                              width: 50,
                              child: Text(
                                'Open',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )),
                        ],
                      )),
                  Container(
                    height: 65,
                    // color: Colors.red,
                    //width: 100,
                    margin: EdgeInsets.all(1),
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 50,
                          child: Tab(
                            icon: new Image.asset("rename.png"),
                            //iconMargin: EdgeInsets.all(4),
                          ),
                        ),
                        Container(
                            height: 30,
                            width: 50,
                            child: Text(
                              'Rename',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            )),
                      ],
                    ),
                  ),
                ])),
        Container(
          // color: Colors.red,
          height: 20,
          width: 170,
          child: Text(
            'Location',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ]),
      Column(children: [
        Container(
          height: 65,
          padding: EdgeInsets.only(top: 2),
          child: Row(
            children: [
              VerticalDivider(
                //indent: 50,
                width: 20,
              ),
              Container(
                  height: 65,
                  //width: 100,
                  margin: EdgeInsets.all(1),
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 60,
                        child: Tab(
                          icon: new Image.asset("mediaServer.png"),
                          //iconMargin: EdgeInsets.all(4),
                        ),
                      ),
                      Container(
                          height: 30,
                          width: 50,
                          child: Text(
                            'Access\n media',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )),
                    ],
                  )),
              Container(
                  height: 65,
                  width: 70,
                  margin: EdgeInsets.all(1),
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 60,
                        child: Tab(
                          icon: new Image.asset("mapNetwork.png"),
                          //iconMargin: EdgeInsets.all(4),
                        ),
                      ),
                      Container(
                          height: 30,
                          width: 70,
                          child: Text(
                            'Map network\n drive',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )),
                    ],
                  )),
              Container(
                  height: 65,
                  width: 70,
                  margin: EdgeInsets.all(1),
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 60,
                        child: Tab(
                          icon: new Image.asset("addNetwork.png"),
                          //iconMargin: EdgeInsets.all(4),
                        ),
                      ),
                      Container(
                          height: 30,
                          width: 70,
                          child: Text(
                            'Add a network\n location',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )),
                    ],
                  )),
              VerticalDivider(
                //indent: 50,
                width: 20,
              ),
            ],
          ),
        ),
        Container(
          //color: Colors.red,
          height: 20,
          width: 170,
          child: Text(
            'Network',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ]),
      Column(children: [
        Container(
          height: 65,
          padding: EdgeInsets.only(top: 2),
          child: Row(
            children: [
              Container(
                height: 65,
                //width: 100,
                margin: EdgeInsets.all(1),
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 60,
                      child: Tab(
                        icon: new Image.asset("settings.png"),
                        //iconMargin: EdgeInsets.all(4),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 50,
                      child: Text(
                        'properties',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 65,
                //margin: EdgeInsets.only(right: 80),
                child: Column(
                  children: [
                    Container(
                        //color: Colors.red,
                        height: 20,
                        //width: 100,
                        margin: EdgeInsets.only(right: 25),
                        child: Row(
                          children: [
                            Container(
                              height: 15,
                              //width: 60,
                              child: Tab(
                                icon: new Image.asset("unistall.png"),
                                //iconMargin: EdgeInsets.all(4),
                              ),
                            ),
                            Container(
                                height: 15,
                                margin: EdgeInsets.only(left: 5),
                                //width: 50,
                                child: Text(
                                  'Unistall or change a program',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                )),
                          ],
                        )),
                    Container(
                        //color: Colors.blue,
                        height: 20,
                        padding: EdgeInsets.only(right: 80),
                        //width: 100,
                        margin: EdgeInsets.all(0),
                        child: Row(
                          children: [
                            Container(
                              height: 15,
                              //width: 60,
                              child: Tab(
                                icon: new Image.asset("systemproperty.png"),
                                //iconMargin: EdgeInsets.all(4),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                height: 15,
                                //width: 50,
                                child: Text(
                                  'System property',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                )),
                          ],
                        )),
                    Container(
                        //color: Colors.green,
                        height: 20,
                        //width: 100,
                        margin: EdgeInsets.only(right: 118),
                        child: Row(
                          children: [
                            Container(
                              height: 15,
                              //width: 60,
                              child: Tab(
                                icon: new Image.asset("manage.png"),
                                //iconMargin: EdgeInsets.all(4),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                height: 15,
                                //width: 50,
                                child: Text(
                                  'Manage',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                )),
                          ],
                        )),
                  ],
                ),
              ),
              VerticalDivider(
                //indent: 50,
                width: 5,
              ),
            ],
          ),
        ),
        Container(
          height: 20,
          width: 170,
          child: Text(
            'System',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ]),
    ]),
  );
}


//Will change
Widget thirdRowSecond(context) {
  return Container(
    color: Color.fromRGBO(191, 189, 189, 1),
    width: MediaQuery.of(context).size.width,
    height: 85,
    child: Row(children: [
      Column(children: [
        Container(
            padding: EdgeInsets.only(top: 2),
            height: 65,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      height: 65,
                      //width: 100,
                      margin: EdgeInsets.all(1),
                      child: Column(
                        children: [
                          Container(
                            height: 30,
                            width: 60,
                            child: Tab(
                              icon: new Image.asset("property.png"),
                              //iconMargin: EdgeInsets.all(4),
                            ),
                          ),
                          Container(
                              height: 30,
                              width: 50,
                              child: Text(
                                'properties',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )),
                        ],
                      )),
                  Container(
                      height: 65,
                      //width: 100,
                      margin: EdgeInsets.all(1),
                      child: Column(
                        children: [
                          Container(
                            height: 30,
                            width: 60,
                            child: Tab(
                              icon: new Image.asset("open.png"),
                              //iconMargin: EdgeInsets.all(4),
                            ),
                          ),
                          Container(
                              height: 30,
                              width: 50,
                              child: Text(
                                'Open',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )),
                        ],
                      )),
                  Container(
                    height: 65,
                    // color: Colors.red,
                    //width: 100,
                    margin: EdgeInsets.all(1),
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 50,
                          child: Tab(
                            icon: new Image.asset("rename.png"),
                            //iconMargin: EdgeInsets.all(4),
                          ),
                        ),
                        Container(
                            height: 30,
                            width: 50,
                            child: Text(
                              'Rename',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            )),
                      ],
                    ),
                  ),
                ])),
        Container(
          // color: Colors.red,
          height: 20,
          width: 170,
          child: Text(
            'Location',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ]),
      Column(children: [
        Container(
          height: 65,
          padding: EdgeInsets.only(top: 2),
          child: Row(
            children: [
              VerticalDivider(
                //indent: 50,
                width: 20,
              ),
              Container(
                  height: 65,
                  //width: 100,
                  margin: EdgeInsets.all(1),
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 60,
                        child: Tab(
                          icon: new Image.asset("property.png"),
                          //iconMargin: EdgeInsets.all(4),
                        ),
                      ),
                      Container(
                          height: 30,
                          width: 50,
                          child: Text(
                            'Access\n media',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )),
                    ],
                  )),
              Container(
                  height: 65,
                  width: 70,
                  margin: EdgeInsets.all(1),
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 60,
                        child: Tab(
                          icon: new Image.asset("open.png"),
                          //iconMargin: EdgeInsets.all(4),
                        ),
                      ),
                      Container(
                          height: 30,
                          width: 70,
                          child: Text(
                            'Map network\n drive',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )),
                    ],
                  )),
              Container(
                  height: 65,
                  width: 70,
                  margin: EdgeInsets.all(1),
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 60,
                        child: Tab(
                          icon: new Image.asset("rename.png"),
                          //iconMargin: EdgeInsets.all(4),
                        ),
                      ),
                      Container(
                          height: 30,
                          width: 70,
                          child: Text(
                            'Add a network\n location',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )),
                    ],
                  )),
              VerticalDivider(
                //indent: 50,
                width: 20,
              ),
            ],
          ),
        ),
        Container(
          //color: Colors.red,
          height: 20,
          width: 170,
          child: Text(
            'Network',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ]),
     
    ]),
  );
}

