import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'p_game.dart';

void main() {
  runApp(
    const GameWidget<PGame>.controlled(
      gameFactory: PGame.new,
    ),
  );
}