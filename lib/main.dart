import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Wordle TR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 18, 19),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 500,
                padding: EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 215, 218, 220)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.help_outline,
                      color: Color.fromARGB(255, 215, 218, 220),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'WORDLE TR',
                      style: TextStyle(
                          color: Color.fromARGB(255, 215, 218, 220),
                          fontSize: 34,
                          fontFamily: "MontSerrat",
                          fontWeight: FontWeight.w600,
                          letterSpacing: 6),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.graphic_eq,
                        color: Color.fromARGB(255, 215, 218, 220)),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(Icons.settings,
                        color: Color.fromARGB(255, 215, 218, 220)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
