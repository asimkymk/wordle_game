import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordle_game/core/constants/color_constants.dart';

import '../features/home/model/word_model.dart';

class Letter extends StatelessWidget {
  final int? index;
  final int? letter_index;
  const Letter({
    Key? key,
    this.index,
    this.letter_index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
          width: 64,
          height: 64,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "${context.watch<Word>().getItem(index!, letter_index!)}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w700),
            ),
          ),
          decoration: BoxDecoration(
              color: context.watch<Word>().status[index!] == false
                  ? ColorContants.BACKGROUND_COLOR
                  : context.watch<Word>().guess[index!][letter_index!] ==
                          context.watch<Word>().correctWord[letter_index!]
                      ? ColorContants.CORRECT_PLACE_COLOR
                      : context.watch<Word>().correctWord.contains(context
                              .watch<Word>()
                              .guess[index!][letter_index!])
                          ? ColorContants.WRONG_PLACE_COLOR
                          : ColorContants.FALSE_PLACE_COLOR,
              border: Border.all(
                width: 3,
                color: context.watch<Word>().status[index!] == false
                    ? ColorContants.FALSE_PLACE_COLOR
                    : context.watch<Word>().guess[index!][letter_index!] ==
                            context.watch<Word>().correctWord[letter_index!]
                        ? ColorContants.CORRECT_PLACE_COLOR
                        : context.watch<Word>().correctWord.contains(context
                                .watch<Word>()
                                .guess[index!][letter_index!])
                            ? ColorContants.WRONG_PLACE_COLOR
                            : ColorContants.FALSE_PLACE_COLOR,
              ))),
    );
  }
}
