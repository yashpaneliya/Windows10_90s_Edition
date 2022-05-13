import 'package:flutter/material.dart';
import 'package:windows10_1990/main.dart';
import 'package:windows10_1990/widgets/startmenu.dart';

class Calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CalculatorState();
  }
}

class CalculatorState extends State<Calculator> {
  TextEditingController tc = TextEditingController();
  var a;
  var b;
  var op;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: viewBools[2],
      child: Center(
        child: Container(
          width: 300,
          height: 450,
          color: Color.fromRGBO(191, 189, 189, 1),
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.grey,
                child: ListTile(
                  leading: Icon(Icons.list),
                  title: Text(
                    'Calculator',
                    style: TextStyle(fontFamily: 'segoe ui'),
                  ),
                  trailing: Card(
                    color: Colors.red,
                    elevation: 0,
                    child: GestureDetector(
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                      onTap: () {
                        setState(() {
                          //close calculator
                          viewBools[2] = false;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 25, right: 25),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        color: Colors.white,
                        child: TextField(
                          controller: tc,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          minLines: 1,
                          maxLines: 1,
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _buildButtonRow(
                        'AC',
                        () {
                          setState(() {
                            tc.text = '';
                          });
                        },
                        '+/-',
                        () {},
                        '%',
                        () {},
                        '/',
                        () {
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _buildButtonRow(
                        '7',
                        () {},
                        '8',
                        () {},
                        '9',
                        () {},
                        'X',
                        () {
                          setState(() {
                            tc.text = '8';
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _buildButtonRow(
                        '4',
                        () {},
                        '5',
                        () {},
                        '6',
                        () {},
                        '-',
                        () {
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _buildButtonRow(
                        '1',
                        () {},
                        '2',
                        () {},
                        '3',
                        () {},
                        '+',
                        () {
                          setState(() {
                            tc.text = '5';
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _buildButtonRow(
                        '0',
                        () {},
                        '1/X',
                        () {},
                        '.',
                        () {},
                        '=',
                        () {
                          setState(() {
                            tc.text = '3';
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtonRow(String but1, ontap1, String but2, ontap2, String but3,
      ontap3, String but4, ontap4) {
    return Row(
      children: <Widget>[
        _buildButton(but1, ontap1),
        SizedBox(
          width: 29,
        ),
        _buildButton(but2, ontap2),
        SizedBox(
          width: 29,
        ),
        _buildButton(but3, ontap3),
        SizedBox(
          width: 29,
        ),
        _buildButton(but4, ontap4),
      ],
    );
  }

  Widget _buildButton(String text, Function ontap) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 40,
        height: 40,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Text(
            text,
            style: TextStyle(fontFamily: 'segoe ui'),
          )),
        ),
        color: Colors.grey,
      ),
    );
  }
}
