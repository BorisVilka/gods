

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Future.delayed(Duration(milliseconds: 1500),(){
      Navigator.of(context).popAndPushNamed('/menu');
    });
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: Image.asset("assets/images/loader.png").image,fit: BoxFit.fill)
        ),
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.only(bottom: 40),
        child: CircularProgressIndicator(
          color: Colors.tealAccent,
          strokeAlign: 4,
          strokeWidth: 7,
        ),
      ),
    );
  }

}