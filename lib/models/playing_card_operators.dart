import 'package:cards/models/card_value_operators.dart';
import 'package:playing_cards/playing_cards.dart';

extension PlayingCardOperators on PlayingCard {
  bool operator <(PlayingCard other) => value < other.value;
  bool operator >(PlayingCard other) => value > other.value;
  bool operator <=(PlayingCard other) => value <= other.value;
  bool operator >=(PlayingCard other) => value >= other.value;
}
