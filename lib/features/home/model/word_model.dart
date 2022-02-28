import 'package:flutter/widgets.dart';

class Word extends ChangeNotifier {
  String guess;
  late bool isCompleted;
  Word({
    required this.guess,
  });

  void addChar(String c) {
    if (guess.length < 5) {
      guess += c;
    }
    notifyListeners();
  }

  void deleteChar() {
    if (guess.length > 0) {
      guess = guess..substring(0, guess.length - 1);
    }
    notifyListeners();
  }
}
