import 'package:flame/components.dart';

import '../p_game.dart';

class HootPlayer extends SpriteAnimationComponent
    with HasGameRef<PGame> {
  HootPlayer({
    required super.position,
  }) : super(size: Vector2.all(64), anchor: Anchor.center);

  @override
  void onLoad() {
    animation = SpriteAnimation.fromFrameData(
      game.images.fromCache('hoot_walk.png'),
      SpriteAnimationData.sequenced(
        amount: 6,
        textureSize: Vector2.all(32),
        stepTime: 0.12,
      ),
    );
  }
}