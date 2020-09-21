import 'dart:math';

import 'package:calculator/images.dart';
import 'package:calculator/main.dart';
import 'package:calculator/weather.dart';
import 'package:flutter/cupertino.dart';
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
  int ctr = 0;
  double divide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(

              leading:  CircleAvatar(
                radius: 55,
                backgroundColor: Colors.black,
                child: CircleAvatar(

                  radius: 26,
                  backgroundImage: AssetImage('assets/profile_pic.jpg'),

                ),
              ),




              title: Text("Calculator"),
            ),
            body: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                  Container(
                    constraints: BoxConstraints.expand(
                        height: Theme.of(context).textTheme.bodyText1.fontSize * 1 + 100.0
                    ),
                    alignment: Alignment.bottomRight,
                    color: Colors.white10,

                    child: Text(
                      "$ansStr",
                      style: TextStyle(
                          fontSize: 50.0,
                          color: Colors.black54
                      ),
                      textAlign: TextAlign.left,
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
                      _button("×", _mul),

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

                  IconButton(
                    padding: EdgeInsets.all(10.0),
                    icon: Icon(
                      Icons.keyboard_arrow_up,

                    ),
                    iconSize: 30,
                    onPressed: (){
                      showModalBottomSheet(context: context, builder: (builder){
                        return Column(
                          children: [
                          ListTile(
                          leading: Icon(
                          Icons.print,
                          ),
                          trailing: Icon(
                          Icons.timeline
                          ),
                          title: Text("Weather"),
                          // subtitle: Text("kuch bhi"),
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Weather()
                                  )
                              );
                            }

                          ),

                        ListTile(
                        leading: Icon(
                        Icons.print,
                        ),
                        trailing: Icon(
                        Icons.timeline
                        ),
                        title: Text("Images"),
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CarouselDemo()
                                )
                            );
                          },

                        ),

                            ListTile(
                              leading: Icon(
                                Icons.print,
                              ),
                              trailing: Icon(
                                  Icons.timeline
                              ),
                              title: Text("Hello Akshat"),
                              subtitle: Text("yeye iska naam to"),
                              onTap: (){},

                            ),



                          ],
                        );
                      });
                    },
                  ),

                ],
              ),
            )


          // This trailing comma makes auto-formatting nicer for build methods.


        );


  }





Widget _button(String number, Function() f){
  return MaterialButton(
    padding: EdgeInsets.all(22.0),
    // height: 100.0,
    highlightColor: Colors.orange[300],

    splashColor: Colors.orangeAccent,

    elevation: 3,
    highlightElevation: 0,
    shape: CircleBorder(side: BorderSide(
    color: Colors.blueAccent, width: 1.0,style: BorderStyle.solid)
    ),

    child: Text(number,
      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28.0),),
    textColor: Colors.black,
    color: Colors.grey[100],
    onPressed: f,
  );
}

//  _oneup() {
//   pow("ansStr",number);
//    setState(() {
//
//    });
//  }

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
    // a = int.parse(ansStr);

    if(ctr == 0){
      a = int.parse(ansStr);
    }
    else{
      _result();
      a = res;
      print(ctr);
    }




    op = "+";
    setState(() {ansStr = '+';});

    ctr = ctr + 1;

    print(a);
  }

  _sub() {

    if(ctr == 0){
      a = int.parse(ansStr);
    }
    else{
      _result();
      a = res;
      print(ctr);
    }

    op = "-";

    setState(() {
      ansStr = '-';
    });

    ctr = ctr + 1;

  }

  _mul() {

    if(ctr == 0){
      a = int.parse(ansStr);
    }
    else{
      _result();
      a = res;
      print(ctr);
    }

    op = "*";

    setState(() {
      ansStr = '*';
    });

    ctr = ctr + 1;

  }

  _div() {

    if(ctr == 0){
      a = int.parse(ansStr);
    }
    else{
      _result();
      a = res;
      print(ctr);
    }
    op = "/";

    setState(() {
      ansStr = '/';
    });

    print(a);

    ctr = ctr + 1;

  }

  _allclr() {

    a=0;
    b=0;
    res = 0;
    ctr = 0;
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
              ansStr = res.toString();
            }break;

          case "-":
            {

              res = (a - b);
              ansStr = res.toString();
            }break;

          case "*":
            {

              res = (a * b);
              ansStr = res.toString();
            }break;

          case "/":
            {

              divide = (a / b);
              ansStr = divide.toString();
              // res = divide.toInt();
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

    });
  }




}


