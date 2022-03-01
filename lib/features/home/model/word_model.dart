import 'package:flutter/widgets.dart';

class Word extends ChangeNotifier {
  List<String> guess = ["", "", "", "", "", "", ""];
  List<bool> status = [false, false, false, false, false, false];
  int index = 0;
  String correctWord = "YOĞUN";

  void addChar(String c) {
    if (guess[index].length < 5) {
      guess[index] += c;
    }
    notifyListeners();
  }

  void deleteChar() {
    if (guess[index].length > 0) {
      guess[index] = guess[index].substring(0, guess[index].length - 1);
    }
    notifyListeners();
  }

  String getItem(int index, int letter_index) {
    return guess[index].length <= letter_index
        ? ""
        : guess[index][letter_index];
  }

  void saveWord() {
    if (guess[index].length == 5) {
      status[index] = true;
      index++;
    }
    notifyListeners();
  }
}
