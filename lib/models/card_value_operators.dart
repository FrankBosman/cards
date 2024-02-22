import 'package:playing_cards/playing_cards.dart';

extension CardValueOperators on CardValue {
  bool operator <(CardValue other) => value < other.value;
  bool operator >(CardValue other) => value > other.value;
  bool operator <=(CardValue other) => value <= other.value;
  bool operator >=(CardValue other) => value >= other.value;

  int get value {
    switch (this) {
      case CardValue.ace:
        return 1;
      case CardValue.two:
        return 2;
      case CardValue.three:
        return 3;
      case CardValue.four:
        return 4;
      case CardValue.five:
        return 5;
      case CardValue.six:
        return 6;
      case CardValue.seven:
        return 7;
      case CardValue.eight:
        return 8;
      case CardValue.nine:
        return 9;
      case CardValue.ten:
        return 10;
      case CardValue.jack:
        return 11;
      case CardValue.queen:
        return 12;
      case CardValue.king:
        return 13;
      case CardValue.joker_1:
        return 14;
      case CardValue.joker_2:
        return 15;
    }
  }
}
