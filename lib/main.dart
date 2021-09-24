import 'package:flutter/material.dart';
import 'package:smart_pizza/ImageClassifier.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(new MaterialApp(
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: AfterSplash(),
      title: Text('Coffee Roast Intelligence', style: TextStyle(color: Colors.white, fontSize: 28)),
      image: Image.asset('assets/images/logo.png'),
      gradientBackground: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Color(0xFFEEE3D5),Color(0xFFD2B79A), Color(0xFFAC7A49)],
      ),
      // backgroundColor: Color(0xFFB18253),
      styleTextUnderTheLoader: TextStyle(),
      photoSize: 130.0,
      loaderColor: Colors.white,
    );
  }
}
class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tensorflow Lite',
      home: ImageClassifier(),
    );
  }
}
