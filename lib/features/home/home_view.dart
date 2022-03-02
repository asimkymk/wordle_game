import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordle_game/keyboard/keyboard_widget.dart';
import 'package:wordle_game/letter/letterButton.dart';

import '../../core/constants/color_constants.dart';
import 'home_view_model.dart';
import 'model/word_model.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Wordle TR',
        home: Scaffold(
          backgroundColor: ColorContants.BACKGROUND_COLOR,
          appBar: buildAppBar(),
          body: Center(
            child: buildHomeBody(),
          ),
        ));
  }

  Column buildHomeBody() {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Letter(index: 0, letter_index: 0),
          Letter(index: 0, letter_index: 1),
          Letter(index: 0, letter_index: 2),
          Letter(index: 0, letter_index: 3),
          Letter(index: 0, letter_index: 4),
        ],
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Letter(index: 1, letter_index: 0),
          Letter(index: 1, letter_index: 1),
          Letter(index: 1, letter_index: 2),
          Letter(index: 1, letter_index: 3),
          Letter(index: 1, letter_index: 4),
        ],
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Letter(index: 2, letter_index: 0),
          Letter(index: 2, letter_index: 1),
          Letter(index: 2, letter_index: 2),
          Letter(index: 2, letter_index: 3),
          Letter(index: 2, letter_index: 4),
        ],
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Letter(index: 3, letter_index: 0),
          Letter(index: 3, letter_index: 1),
          Letter(index: 3, letter_index: 2),
          Letter(index: 3, letter_index: 3),
          Letter(index: 3, letter_index: 4),
        ],
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Letter(index: 4, letter_index: 0),
          Letter(index: 4, letter_index: 1),
          Letter(index: 4, letter_index: 2),
          Letter(index: 4, letter_index: 3),
          Letter(index: 4, letter_index: 4),
        ],
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Letter(index: 5, letter_index: 0),
          Letter(index: 5, letter_index: 1),
          Letter(index: 5, letter_index: 2),
          Letter(index: 5, letter_index: 3),
          Letter(index: 5, letter_index: 4),
        ],
      ),

      //KEYBOARD
      Spacer(),
      KeyboardWidget(),
      Spacer(),
    ]);
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: ColorContants.BACKGROUND_COLOR,
      leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.help_outline, color: ColorContants.ICON_COLOR)),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'WORDLE TR',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {
              Provider.of<Word>(context, listen: false).restartGame();
            },
            icon: Icon(Icons.restart_alt, color: ColorContants.ICON_COLOR)),
        IconButton(
            onPressed: () {},
            icon:
                Icon(Icons.ios_share_rounded, color: ColorContants.ICON_COLOR)),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: ColorContants.ICON_COLOR))
      ],
    );
  }
}
