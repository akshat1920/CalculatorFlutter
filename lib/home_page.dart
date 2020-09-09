import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {



  @override
  State createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var ansStr = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(

              title: Text("Calculator"),
            ),
            body: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                  Container(
                    constraints: BoxConstraints.expand(
                        height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 100.0
                    ),
                    alignment: Alignment.bottomRight,
                    color: Colors.black54,

                    child: Text(
                      "$ansStr",
                      style: TextStyle(
                          fontSize: 50.0,
                          color: Colors.white
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _button("7", _seven),
                      _button("8", _eight),
                      _button("9", _nine),
                      _button("/", _div),

                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _button("4", _four),
                      _button("5", _five),
                      _button("6", _six),
                      _button("*", _mul),

                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _button("1", _one),
                      _button("2", _two),
                      _button("3", _three),
                      _button("-", _sub),

                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _button(".", _deci),
                      _button("0", _zero),
                      _button("=", _result),
                      _button("+", _add),

                    ],
                  ),
                ],
              ),
            )


          // This trailing comma makes auto-formatting nicer for build methods.


        );


  }





Widget _button(String number, Function() f){
  return MaterialButton(
    height: 100.0,
    child: Text(number,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),),
    textColor: Colors.black,
    color: Colors.grey[100],
    onPressed: f,
  );
}

  _zero() {
    ansStr = '0' + ansStr;
    setState(() {
      '$ansStr';
    });

  }

  _one() {
    ansStr = '1' + ansStr;
    setState(() {
      '$ansStr';
    });

  }

  _two() {
    ansStr = '2' + ansStr;
    setState(() {
      '$ansStr';
    });

  }

  _three() {
    ansStr = '3' + ansStr;
    setState(() {
      '$ansStr';
    });

  }

  _four() {
    ansStr = '4' + ansStr;
    setState(() {
      '$ansStr';
    });

  }

  _five() {
    ansStr = '5' + ansStr;
    setState(() {
      '$ansStr';
    });

  }

  _six() {
    ansStr = '6' + ansStr;
    setState(() {
      '$ansStr';
    });

  }

  _seven() {
    ansStr = '7' + ansStr;
    setState(() {
      '$ansStr';
    });

  }

  _eight() {
    ansStr = '8' + ansStr;
    setState(() {
      '$ansStr';
    });

  }

  _nine() {
    ansStr = '9' + ansStr;
    setState(() {
      '$ansStr';
    });

  }

  _add() {
    ansStr = '+';
    setState(() {
      '$ansStr';
    });

  }

  _sub() {
    ansStr = '-';
    setState(() {
      '$ansStr';
    });

  }

  _mul() {
    ansStr = '*';
    setState(() {
      '$ansStr';
    });

  }

  _div() {
    ansStr = '/';
    setState(() {
      '$ansStr';
    });

  }

  _clr() {
    ansStr = '0';
    setState(() {
      '$ansStr';
    });

  }

  _deci() {
    ansStr = '.';
    setState(() {
      '$ansStr';
    });

  }

  _result() {
    ansStr = '0';
    setState(() {
      '$ansStr';
    });

  }



}


