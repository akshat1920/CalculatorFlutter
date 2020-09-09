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
                      _button("7", _zero),
                      _button("8", _zero),
                      _button("9", _zero),
                      _button("/", _zero),

                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _button("4", _zero),
                      _button("5", _zero),
                      _button("6", _zero),
                      _button("*", _zero),

                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _button("1", _zero),
                      _button("2", _zero),
                      _button("3", _zero),
                      _button("-", _zero),

                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _button(".", _zero),
                      _button("0", _zero),
                      _button("=", _zero),
                      _button("+", _zero),

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
    ansStr = '100';
    setState(() {
      '$ansStr';
    });
  }
}


