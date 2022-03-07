import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordle_game/features/home/model/word_model.dart';
import 'features/home/home.dart';

/*TODO LIST

 - New Home Screen for playing word anf number guess play
 - Number guess play screen
 --- Online vs with friend searchs


*/
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
