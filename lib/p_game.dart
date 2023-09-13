import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:p_game/actors/hoot.dart';

import 'managers/segment_manager.dart';
import 'objects/coin.dart';
import 'objects/ground.dart';
import 'objects/platform.dart';

class PGame extends FlameGame {
  PGame();

  late HootPlayer _hoot;
  double objectSpeed = 0.0;

  final world = World();
  late final CameraComponent cameraComponent;

  @override
  Future<void> onLoad() async {
    await images.loadAll([
      'ground.png',
      'hoot_walk.png',
      'gold_coin.png',
      'heart.png',
      'platform.png',
    ]);

  cameraComponent = CameraComponent(world: world);
  cameraComponent.viewfinder.anchor = Anchor.topLeft;
  addAll([cameraComponent, world]);

  initializeGame();
  }

    void initializeGame() {
    // Assume that size.x < 3200
    final segmentsToLoad = (size.x / 640).ceil();
    segmentsToLoad.clamp(0, segments.length);

    for (var i = 0; i < segmentsToLoad; i++) {
      loadGameSegments(i, (640 * i).toDouble());
    }

      _hoot = HootPlayer(
      position: Vector2(128, canvasSize.y - 70),
    );
    world.add(_hoot);
  }

  void loadGameSegments(int segmentIndex, double xPositionOffset) {
    for (final block in segments[segmentIndex]) {
      switch (block.blockType) {
        case Ground:
          break;
        case Platform:
          break;
        case Coin:
          break;
      }
    }
  }
}