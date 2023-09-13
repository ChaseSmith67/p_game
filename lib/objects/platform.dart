import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

import '../p_game.dart';

class Platform extends SpriteComponent
    with HasGameRef<PGame> {
  final Vector2 gridPosition;
  double xOffset;

  Platform({
    required this.gridPosition,
    required this.xOffset,
  }) : super(size: Vector2.all(64), anchor: Anchor.bottomLeft);

  @override
  void onLoad() {
  }

  @override
  void update(double dt) {
    super.update(dt);
  }
}