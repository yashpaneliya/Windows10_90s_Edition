import 'package:flutter/material.dart';
import 'package:windows10_1990/widgets/MiddleContent/middleContent.dart';

class ForthRow extends StatefulWidget {
  @override
  _ForthRowState createState() => _ForthRowState();
}

class _ForthRowState extends State<ForthRow> {
  @override
  Widget build(BuildContext context) {
     return Container(
    height: 30,
    color: Colors.grey,
    width: MediaQuery.of(context).size.width,
    child: Row(
      children: [
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
                    icon: new Image.asset("mycomp.png"),
                  ),
                ),

                    Container(
                  height: 20,
                  width: 20,
                  
                  margin: EdgeInsets.all(1),
                  child: Text(' > ', style: TextStyle(fontSize: 12),),
                  ),

                  Container(
                  height: 20,
                  margin: EdgeInsets.all(1),
                  padding: EdgeInsets.only(top:1),
                  child: Text(
                    
                    select == 0 ?  'ThisPC' : 'Quick Access', style: TextStyle(fontSize: 12),),
                  ),
                     Container(
                    height: 15,
                    padding: EdgeInsets.only(left: 1220),
                    child: Image.asset('down.png')
                  ),
                  Container(
                    height: 15,
                    padding: EdgeInsets.only(left: 5),
                    child: Image.asset('reload.png'),
                  ),

                  ],
                ),
              ),
              SizedBox(width: 15,),
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
                      child: Text('Search D..', style: TextStyle(fontSize: 12),),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
  }
}
