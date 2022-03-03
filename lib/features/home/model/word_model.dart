import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:wordle_game/features/home/model/utils/db_connection.dart';

class Word extends ChangeNotifier {
  List<String> guess = ["", "", "", "", "", "", ""];
  List<bool> status = [false, false, false, false, false, false];
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

  Future<int> saveWord() async {
    if (guess[index].length == 5) {
      if (await query_word() == true) {
        status[index] = true;
        if (guess[index] == correctWord) {
          completed = true;
          notifyListeners();
          return 1; //kelime doğru bilindi
        }
        index++;

        if (index == 6) {
          notifyListeners();
          return 3; // game over
        }
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
    completed = false;
    notifyListeners();
  }

  Future<bool> query_word() async {
    return await dbHelper.queryWord(guess[index]);
  }
}
