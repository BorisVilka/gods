import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:godsofolympus/game.dart';
import 'package:godsofolympus/loader.dart';
import 'package:godsofolympus/menu.dart';
import 'package:godsofolympus/policy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (c) => LoaderScreen(),
        '/game': (c) => GameScreen(),
        '/menu': (c) => MenuScreen(),
        '/policy': (c) => WebScreen()
      },
    );
  }
}
