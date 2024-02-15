

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GameState();
  }

}

class _GameState extends State<GameScreen> {

  var size = 20.0;



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: Image.asset("assets/images/bg.png").image, fit: BoxFit.fill)
        ),
        child: Row(
          children: [
            Image.asset("assets/images/game.png"),
            Container(
              padding: EdgeInsets.only(top: size*3),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: size*3,top: size*6),
                    child: Column(
                      children: [
                        getLabel("13"),
                        getText(12,0),
                        getText(12,1),
                        getText(12,2),
                        getText(12,3),
                        getText(12,4),
                        getText(12,5),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size,top: size*9),
                    child: Row(
                      children: [
                        getLabel("6"),
                        getText(5,0),
                        SizedBox(width: size,),
                        getText(5,2),
                        getText(5,3),
                        getText(5,4),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0,top: size*12),
                    child: Row(
                      children: [
                        getLabel("2"),
                        getText(1,0),
                        getText(1,1),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size*6,top: size*5),
                    child: Column(
                      children: [
                        getLabel("5"),
                        getText(4,0),
                        getText(4,1),
                        getText(4,2),
                        getText(4,3),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size*5,top: size*6),
                    child: Row(
                      children: [
                        getLabel("3"),
                        SizedBox(width: size,),
                        getText(2,1),
                        getText(2,2),
                        getText(2,3),
                        getText(2,4),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size*11,top: size*3),
                    child: Column(
                      children: [
                        getLabel("4"),
                        getText(3,0),
                        getText(3,1),
                        getText(3,2),
                        getText(3,3),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size*7,top: size*4),
                    child: Row(
                      children: [
                        getLabel("14"),
                        getText(13,0),
                        getText(13,1),
                        getText(13,2),
                        SizedBox(width: size,),
                        getText(13,4),
                        getText(13,5),
                        getText(13,6),
                        SizedBox(width: size,),
                        getText(13,8),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size*15,top: size),
                    child: Column(
                      children: [
                        getLabel("9"),
                        getText(8,0),
                        getText(8,1),
                        getText(8,2),
                        getText(8,3),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size*13,top: size*6),
                    child: Row(
                      children: [
                        getLabel("7"),
                        getText(6,0),
                        getText(6,1),
                        getText(6,2),
                        getText(6,3),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size*18,top: size*2),
                    child: Column(
                      children: [
                        getLabel("8"),
                        getText(7,0),
                        getText(7,1),
                        getText(7,2),
                        getText(7,3),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size*17,top: size*4),
                    child: Row(
                      children: [
                        getLabel("11"),
                        SizedBox(width: size,),
                        getText(10,1),
                        getText(10,2),
                        getText(10,3),
                        SizedBox(width: size,),
                        getText(10,5),
                        getText(10,6),
                        getText(10,7),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size*22,top: size*2),
                    child: Column(
                      children: [
                        getLabel("10"),
                        getText(9,0),
                        getText(9,1),
                        getText(9,2),
                        SizedBox(height: size,),
                        getText(9,4),
                        SizedBox(height: size,),
                        getText(9,6),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size*20,top: size*6),
                    child: Row(
                      children: [
                        getLabel("1"),
                        getText(0,0),
                        getText(0,1),
                        getText(0,2),
                        getText(0,3),
                        getText(0,4),
                        getText(0,5),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size*20,top: size*8),
                    child: Row(
                      children: [
                        getLabel("12"),
                        getText(11,0),
                        getText(11,1),
                        getText(11,2),
                        getText(11,3),
                        getText(11,4),
                        getText(11,5),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      )
    );
  }

  var controlls = [
    [
      TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),
    ],
    [
      TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),
    ],
    [
      TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),
    ],
    [
      TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),
    ],
    [
      TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),
    ],
    [
      TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),
    ],
    [
      TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),
    ],
    [
      TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),
    ],
    [
      TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),
    ],
    [
      TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),
    ],
    [
      TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),
    ],
    [
      TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),
    ],
    [
      TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),
    ],
    [
      TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),
    ],
  ];
  var words = [
    "Hermes", //1
    "Pos", //2
    "Athena", //3
    "Crap", //4
    "Aphr", //5
    "Poker", //6
    "Vegas", //7
    "Ares", //8
    "Tyche", //9
    "Demeter", //10
    "Roulette", //11
    "Hestia", // 12
    "Cronus", //13
    "Blackjack", //14
  ];

  Widget getText(int i1, int i2) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.blue,width: 0.5)
      ),
      width: size,
      height: size,
      alignment: Alignment.center,
      child: TextField(
        controller: controlls[i1][i2],
        onChanged: (s) {
          print("$s ${words[i1][i2]}");
          if(s.toLowerCase()!=words[i1][i2].toLowerCase()) {
            setState(() {
              controlls[i1][i2].text = "";
            });
          } else {
            controlls[i1][i2].text = words[i1][i2].toUpperCase();
          }
        },
        maxLines: 1,
        maxLength: 1,
        textAlign: TextAlign.center,
        showCursor: false,
        style: TextStyle(
            fontSize: 12, color: Colors.black,
        ),
        decoration: InputDecoration(
            counterText: "",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            fillColor: Colors.white
        ),
      ),
    );
  }

  Widget getLabel(String text) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      child: Text(text,
        style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),
        textAlign: TextAlign.center,
      ),
    );
  }

}