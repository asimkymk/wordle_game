import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:wordle_game/core/constants/color_constants.dart';
import 'package:wordle_game/features/home/model/utils/db_connection.dart';

class Word extends ChangeNotifier {
  List<String> guess = ["", "", "", "", "", "", ""];
  List<bool> status = [false, false, false, false, false, false];
  Map<String, int> letters = {
    "A": 0,
    "B": 0,
    "C": 0,
    "Ç": 0,
    "D": 0,
    "E": 0,
    "F": 0,
    "G": 0,
    "Ğ": 0,
    "H": 0,
    "I": 0,
    "İ": 0,
    "J": 0,
    "K": 0,
    "L": 0,
    "M": 0,
    "N": 0,
    "O": 0,
    "Ö": 0,
    "P": 0,
    "R": 0,
    "S": 0,
    "Ş": 0,
    "T": 0,
    "U": 0,
    "Ü": 0,
    "V": 0,
    "Y": 0,
    "Z": 0
  };
  bool completed = false;
  int index = 0;
  late String correctWord = "55555";
  final dbHelper = DBConnection.instance;

  Word() {
    Random random = new Random();
    int randomNumber = random.nextInt(5644) + 2;
    query(randomNumber.toString());
    print(correctWord);
  }

  void query(id) async {
    final allRows = await dbHelper.queryRows(id);
    correctWord = allRows[0]['word'];
    print(correctWord);
  }

  void addChar(String c) {
    if (guess[index].length < 5 && completed == false) {
      guess[index] += c;
    }
    notifyListeners();
  }

  void deleteChar() {
    if (guess[index].length > 0 && completed == false) {
      guess[index] = guess[index].substring(0, guess[index].length - 1);
    }
    notifyListeners();
  }

  String getItem(int index, int letter_index) {
    return guess[index].length <= letter_index
        ? ""
        : guess[index][letter_index];
  }

  void _letterController() {
    for (int i = 0; i < 5; i++) {
      if (guess[index][i] == correctWord[i]) {
        letters[guess[index][i]] = 3;
      } else if (correctWord.contains(guess[index][i]) &&
          letters[guess[index][i]] != 3) {
        letters[guess[index][i]] = 2;
      } else if (correctWord.contains(guess[index][i]) == false) {
        letters[guess[index][i]] = 1;
      }
    }
  }

  Future<int> saveWord() async {
    if (guess[index].length == 5) {
      if (await query_word() == true) {
        status[index] = true;
        if (guess[index] == correctWord) {
          completed = true;
          _letterController();
          notifyListeners();
          return 1; //kelime doğru bilindi
        }

        if (index + 1 == 6) {
          _letterController();
          completed = true;
          notifyListeners();

          return 3; // game over
        }
        _letterController();
        index++;

        notifyListeners();
        return 0; //kelime doğru değil
      }
      notifyListeners();
      return 2; //kelime listesinde kelime yok
    }
    notifyListeners();
    return -1; //kelime uzunluğu 5 değil.
  }

  Future<void> restartGame() async {
    Random random = new Random();
    int randomNumber = random.nextInt(5644) + 2;
    query(randomNumber.toString());
    guess = ["", "", "", "", "", "", ""];
    status = [false, false, false, false, false, false];
    index = 0;
    letters = {
      "A": 0,
      "B": 0,
      "C": 0,
      "Ç": 0,
      "D": 0,
      "E": 0,
      "F": 0,
      "G": 0,
      "Ğ": 0,
      "H": 0,
      "I": 0,
      "İ": 0,
      "J": 0,
      "K": 0,
      "L": 0,
      "M": 0,
      "N": 0,
      "O": 0,
      "Ö": 0,
      "P": 0,
      "R": 0,
      "S": 0,
      "Ş": 0,
      "T": 0,
      "U": 0,
      "Ü": 0,
      "V": 0,
      "Y": 0,
      "Z": 0
    };
    completed = false;
    notifyListeners();
  }

  Future<bool> query_word() async {
    return await dbHelper.queryWord(guess[index]);
  }
}
