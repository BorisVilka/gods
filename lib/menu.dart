
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:godsofolympus/settings.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: Image.asset("assets/images/bg.png").image,fit: BoxFit.fill)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed('/game');
              },
              child: Image.asset("assets/images/play.png",width: 250,height: 80,),
            ),
            GestureDetector(
              onTap: (){
                showDialog(context: context, builder: (c) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    alignment: Alignment.center,
                    child: SettingsFrame(),
                  );
                });
              },
              child: Image.asset("assets/images/options.png",width: 200,height: 70,),
            ),
            GestureDetector(
              onTap: (){
                exit(0);
              },
              child: Image.asset("assets/images/exit.png",width: 150,height: 50,),
            ),
          ],
        ),
      ),
    );
  }

}