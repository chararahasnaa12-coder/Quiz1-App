import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Today feelings', home: const FeelingScreen());
  }
}

class FeelingScreen extends StatefulWidget {
  const FeelingScreen({super.key});
  @override
  _FeelingScreenState createState() => _FeelingScreenState();
}

class _FeelingScreenState extends State<FeelingScreen> {
  int happy = 0;
  int tired = 0;
  int angry = 0;
  String result = "❔";

  void PressHappy() {
    setState(() {
      happy++;
    });
  }

  void PressTired() {
    setState(() {
      tired++;
    });
  }

  void PressAngry() {
    setState(() {
      angry++;
    });
  }

  void PressResset() {
    setState(() {
      tired = 0;
      happy = 0;
      angry = 0;
    });
  }

  Widget build(BuildContext context) {
    (Text("How Do You Feel Today"),);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: PressHappy,
              child: Text("😊Happy"),
              ButtonStyle(backgroundColor: Colors.yellow),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: PressTired,
              child: Text("😫 tired"),
              ButtonStyle(backgroundColor: Colors.orange),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: PressAngry,
              child: Text("😡 angry"),
              ButtonStyle(backgroundColor: Colors.red),
            ),
            SizedBox(height: 5),
            ElevatedButton(onPressed: PressResset, child: Text("Resset")),
          ],
        ),
      ),
    );
  }
}
