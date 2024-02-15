
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsFrame extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SettingsState();
  }

}

class _SettingsState extends State<SettingsFrame> {


  var _music = 0.0;
  var _volume = 0.0;

  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    initPrefs();
  }
  void initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      _music = prefs.getDouble("music") ?? 0.0;
      _volume = prefs.getDouble("volume") ?? 0.0;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/label.png",height: 30,),
        Container(
          width: 290,
          height: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              image: DecorationImage(image: Image.asset("assets/images/frame.png").image,fit: BoxFit.fill)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/policy');
                },
                child: Image.asset("assets/images/privacy.png",width: 200,height: 30,),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: const Text("Music",style: TextStyle(color: Colors.white,fontSize: 16),),
                    ),
                    SliderTheme(
                        data: const SliderThemeData(
                            trackHeight: 15,
                            thumbShape: RoundSliderThumbShape(),
                            thumbColor: Color.fromARGB(255, 159, 1, 31),
                        ),
                        child: Slider(
                          value: _music,
                          max: 10,
                          min: 0,
                          onChanged: (d) {
                            setState(() {
                              _music = d;
                              //Player.instance.setMusicLevel(_music);
                              prefs.setDouble("music", _music);
                            });
                          },
                          activeColor: Color.fromARGB(255, 159, 1, 31),
                          inactiveColor: Colors.black87,
                        )
                    )
                  ],
                ),
              ),
              //   const Spacer(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: const Text("Sounds",style: TextStyle(color: Colors.white,fontSize: 16),),
                    ),
                    SliderTheme(
                        data: const SliderThemeData(
                            trackHeight: 15,
                            thumbShape: RoundSliderThumbShape(),
                            thumbColor: Color.fromARGB(255, 159, 1, 31),
                        ),
                        child: Slider(
                          value: _volume,
                          max: 10,
                          min: 0,
                          onChanged: (d) {
                            setState(() {
                              _volume = d;
                              //Player.instance.setVolumeLevel(_volume);
                              prefs.setDouble("volume", _volume);
                            });
                          },
                          activeColor: Color.fromARGB(255, 159, 1, 31),
                          inactiveColor: Colors.black87,
                        )
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset("assets/images/back.png",width: 150,height: 30,),
              ),
            ],
          ),
        )
      ],
    );
  }

}