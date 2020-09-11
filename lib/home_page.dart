import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {



  @override
  State createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var ansStr = "0";
  int a,b;
  var num = "0";
  var op = "0";
  int res = 0;

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
                    color: Colors.white,

                    child: Text(
                      "$ansStr",
                      style: TextStyle(
                          fontSize: 50.0,
                          color: Colors.black54
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
                      _button("AC", _allclr),
                      _button("0", _zero),
                      _button("=", _display),
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

    setState(() {
      ansStr = ansStr + '0';
    });

  }

  _one() {

    setState(() {
      ansStr = ansStr + '1';
    });

  }

  _two() {

    setState(() {
      ansStr = ansStr + '2';
    });

  }

  _three() {

    setState(() {
      ansStr = ansStr + '3';
    });

  }

  _four() {

    setState(() {
      ansStr = ansStr + '4';
    });

  }

  _five() {

    setState(() {
      ansStr = ansStr + '5';
    });

  }

  _six() {

    setState(() {
      ansStr = ansStr + '6';
    });

  }

  _seven() {

    setState(() {
      ansStr = ansStr + '7';
    });

  }

  _eight() {

    setState(() {
      ansStr = ansStr + '8';
    });

  }

  _nine() {

    setState(() {
      ansStr = ansStr + '9';
    });

  }

  _add() {
    print(a);
    a = int.parse(ansStr);


//    if(ansStr == "+"){
//
//
//    }
//
//    else{
//      _result();
//    }


    op = "+";
    setState(() {ansStr = '+';});

    print(a);
  }

  _sub() {

    a = int.parse(ansStr);
    //_result();
    op = "-";

    setState(() {
      ansStr = '-';
    });

  }

  _mul() {

    a = int.parse(ansStr);
    //_result();
    op = "*";

    setState(() {
      ansStr = '*';
    });

  }

  _div() {

    a = int.parse(ansStr);
    //_result();
    op = "/";

    setState(() {
      ansStr = '/';
    });

  }

  _allclr() {

    a=0;
    b=0;
    res = 0;
    ansStr = 0.toString();
    setState(() {
      ansStr = '0';
    });

  }


  _result() {
    

      b = int.parse(ansStr.substring(1,ansStr.length));


//        print(a);

        switch(op){
          case "+":
            {

              res = (a + b);
            }break;

          case "-":
            {

              res = (a - b);
            }break;

          case "*":
            {

              res = (a * b);
            }break;

          case "/":
            {

              res = (a / b) as int;
            }break;


        }

      }




  _display(){

    if(ansStr.length == 1) {
      ansStr = a.toString();
    }
    else {
      _result();
    }

    print(a);

    setState(() {
      ansStr = res.toString();
    });
  }



}


