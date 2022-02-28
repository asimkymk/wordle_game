import 'package:flutter/material.dart';
import 'package:wordle_game/keyboard/keyboard_widget.dart';
import 'package:wordle_game/letter/letterButton.dart';

import '../../core/constants/color_constants.dart';
import 'home_view_model.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Wordle TR',
        home: Scaffold(
          backgroundColor: ColorContants.BACKGROUND_COLOR,
          appBar: buildAppBar(),
          body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Letter(),
                      Letter(),
                      Letter(),
                      Letter(),
                      Letter(),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Letter(),
                      Letter(),
                      Letter(),
                      Letter(),
                      Letter(),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Letter(),
                      Letter(),
                      Letter(),
                      Letter(),
                      Letter(),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Letter(),
                      Letter(),
                      Letter(),
                      Letter(),
                      Letter(),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Letter(),
                      Letter(),
                      Letter(),
                      Letter(),
                      Letter(),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Letter(),
                      Letter(),
                      Letter(),
                      Letter(),
                      Letter(),
                    ],
                  ),

                  //KEYBOARD
                  Spacer(),
                  KeyboardWidget(),
                  Spacer(),
                ]),
          ),
        ));
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
