import 'package:flutter/material.dart';
import 'home.dart';
import 'model/word_model.dart';

abstract class HomeViewModel extends State<Home> {
  List<Word> words = [
    Word(
      guess: "",
    ),
    Word(
      guess: "",
    ),
    Word(
      guess: "",
    ),
    Word(
      guess: "",
    ),
    Word(
      guess: "",
    ),
    Word(
      guess: "",
    )
  ];
  @override
  void initState() {
    super.initState();
  }
}
