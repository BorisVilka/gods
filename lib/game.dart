

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

  var size = 23.0;



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
              padding: EdgeInsets.only(top: size*1),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: size,top: size*6),
                    child: Column(
                      children: [
                        getLabel("4"),
                        getText(3,0),
                        getText(3,1),
                        getText(3,2),
                        getText(3,3),
                        getText(3,4),
                        getText(3,5),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0,top: size*8),
                    child: Row(
                      children: [
                        getLabel("1"),
                        SizedBox(width: size,),
                        getText(0,1),
                        getText(0,2),
                        getText(0,3),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size+size*2,top: size*10),
                    child: Row(
                      children: [
                        getLabel("3"),
                        getText(2,0),
                        getText(2,1),
                        getText(2,2),
                        getText(2,3),
                        getText(2,4),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size+size*2,top: size*12),
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
                    margin: EdgeInsets.only(left: size+size*6,top: size*7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        getLabel("5"),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              getLabel("6"),
                              getText(5,0)
                            ],
                          ),
                        ),
                        getText(5,1),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size+size*8,top: size*8),
                    child: Row(
                      children: [
                        getText(0,1),
                        getText(0,1),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size+size*9,top: size*3),
                    child: Column(
                      children: [
                        getLabel("8"),
                        getText(7,0),
                        getText(7,1),
                        SizedBox(height: size,),
                        getText(7,3),
                        SizedBox(height: size,),
                        getText(7,4),
                        getText(7,5),
                        SizedBox(height: size,),
                        getText(7,7),
                        SizedBox(height: size,),
                        getText(7,9),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size+size*8,top: size*6),
                    child: Row(
                      children: [
                        getLabel("9"),
                        getText(8,0),
                        getText(8,1),
                        getText(8,2),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size+size*12,top: 0),
                    child: Column(
                      children: [
                        getLabel("10"),
                        getText(9,0),
                        SizedBox(height: size,),
                        getText(9,2),
                        getText(9,3),
                        getText(9,4),
                        getText(9,5),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size+size*11,top: size*2),
                    child: Row(
                      children: [
                        getLabel("11"),
                        getText(10,0),
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
                    margin: EdgeInsets.only(left: size+size*16,top: 0),
                    child: Column(
                      children: [
                        getLabel("14"),
                        getText(13,0),
                        getText(13,1),
                        getText(13,2),
                        getText(13,3),
                        getText(13,4),
                        getText(13,5),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size+size*8,top: size*11),
                    child: Row(
                      children: [
                        getLabel("12"),
                        getText(11,0),
                        getText(11,1),
                        SizedBox(width: size,),
                        getText(11,3),
                        getText(11,4),
                        getText(11,5),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size+size*11,top: size*10),
                    child: Column(
                      children: [
                        getLabel("13"),
                        getText(12,0),
                        getText(12,1),
                        getText(12,2),
                        getText(12,3),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size+size*4,top: size*6),
                    child: Column(
                      children: [
                        getLabel("2"),
                        getText(1,0),
                        getText(1,1),
                        getText(1,2),
                        SizedBox(height: size,),
                        getText(1,4),
                        SizedBox(height: size,),
                        getText(1,6),
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
    "Poker",
    "Demeter",
    "Vegas",
    "Cronus",

    "Poker",
    "Pos",
    "Vegas",
    "Ares",
    "Tyche",
    "Demeter",
    "Roulette",
    "Hestia",
    "Cronus",
    "Blackjack",
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
          if(s!=words[i1][i2]) {
            setState(() {
              controlls[i1][i2].text = "";
            });
          }
        },
        maxLines: 1,
        maxLength: 1,
        textAlign: TextAlign.center,
        showCursor: false,
        style: TextStyle(
            fontSize: 14, color: Colors.black,
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