import 'package:flutter/material.dart';
import 'package:wordle_game/core/constants/color_constants.dart';

class Letter extends StatelessWidget {
  const Letter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = ColorContants.BACKGROUND_COLOR;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
          width: 64,
          height: 64,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w700),
            ),
          ),
          decoration: BoxDecoration(
              color: color,
              border: Border.all(
                  width: 3,
                  color: color == ColorContants.BACKGROUND_COLOR
                      ? ColorContants.FALSE_PLACE_COLOR
                      : color))),
    );
  }
}
