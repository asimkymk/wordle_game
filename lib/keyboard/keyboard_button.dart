import 'package:flutter/material.dart';
import 'package:wordle_game/core/constants/color_constants.dart';

class KeyboardButton extends StatelessWidget {
  final String? text;

  const KeyboardButton({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
          color: ColorContants.ICON_COLOR,
          borderRadius: BorderRadius.circular(4)),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: text! == "BACKSPACE"
              ? Icon(Icons.backspace_outlined, color: Colors.white)
              : Text(
                  text!,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
        ),
      ),
    );
  }
}
