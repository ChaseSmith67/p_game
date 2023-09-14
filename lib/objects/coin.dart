import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

import '../p_game.dart';

class Coin extends SpriteAnimationComponent
    with HasGameRef<PGame> {
  final Vector2 gridPosition;
  final Vector2 velocity = Vector2.zero();
  double xOffset;

  Coin({
    required this.gridPosition,
    required this.xOffset,
  }) : super(size: Vector2.all(64), anchor: Anchor.center);

  @override
  void onLoad() {
    animation = SpriteAnimation.fromFrameData(
      game.images.fromCache('coin.png'),
      SpriteAnimationData.sequenced(
        amount: 5,
        textureSize: Vector2.all(16),
        stepTime: 0.12,
      ),
    );
    position = Vector2(
      (gridPosition.x * size.x) + xOffset + (size.x / 2),
      game.size.y - (gridPosition.y * size.y) - (size.y / 2),
    );
    add(RectangleHitbox(collisionType: CollisionType.passive));
  }

  @override
  void update(double dt) {
    velocity.x = game.objectSpeed;
    position += velocity * dt;
    if (position.x < -size.x) removeFromParent();
    super.update(dt);
  }
}