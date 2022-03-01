import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordle_game/features/home/home_view_model.dart';
import 'package:wordle_game/features/home/model/word_model.dart';

import 'features/home/home.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Word()),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Wordle TR", home: Home());
  }
}
