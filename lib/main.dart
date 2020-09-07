import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_screen/home.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: "First",
            body: "this is first description",
            image: Image.asset(
              "images/one.jpg",
              width: 350,
              height: 250,
            )),
        PageViewModel(
            title: "Second",
            body: "this is second description",
            image: Image.asset(
              "images/two.jpg",
              width: 350,
              height: 250,
            )),
        PageViewModel(
            title: "Third",
            body: "this is third description",
            image: Image.asset(
              "images/three.jpg",
              width: 350,
              height: 250,
            )),
      ],
      onDone: () {
        Navigator.push(
            context, CupertinoPageRoute(builder: (context) => HomePage()));
      },
      done: Text("Done"),
      showSkipButton: true,
      skip: Text("Skip"),
      dotsDecorator: DotsDecorator(
          size: Size(10.0, 10.0),
          color: Colors.deepPurple,
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)))),
    );
  }
}
