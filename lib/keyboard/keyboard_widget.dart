import 'package:flutter/material.dart';

import 'keyboard_button.dart';

class KeyboardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              KeyboardButton(text: 'E'),
              KeyboardButton(text: 'R'),
              KeyboardButton(text: 'T'),
              KeyboardButton(text: 'Y'),
              KeyboardButton(text: 'U'),
              KeyboardButton(text: 'I'),
              KeyboardButton(text: 'O'),
              KeyboardButton(text: 'P'),
              KeyboardButton(text: 'Ğ'),
              KeyboardButton(text: 'Ü'),
            ],
          ),
          SizedBox(height: 6),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              KeyboardButton(text: 'A'),
              KeyboardButton(text: 'S'),
              KeyboardButton(text: 'D'),
              KeyboardButton(text: 'F'),
              KeyboardButton(text: 'G'),
              KeyboardButton(text: 'H'),
              KeyboardButton(text: 'J'),
              KeyboardButton(text: 'K'),
              KeyboardButton(text: 'L'),
              KeyboardButton(text: 'Ş'),
              KeyboardButton(text: 'İ'),
            ],
          ),
          SizedBox(height: 6),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              KeyboardButton(text: 'ENTER'),
              KeyboardButton(text: 'Z'),
              KeyboardButton(text: 'C'),
              KeyboardButton(text: 'V'),
              KeyboardButton(text: 'B'),
              KeyboardButton(text: 'N'),
              KeyboardButton(text: 'M'),
              KeyboardButton(text: 'Ö'),
              KeyboardButton(text: 'Ç'),
              KeyboardButton(text: 'BACKSPACE'),
            ],
          )
        ],
      ),
    );
  }
}
