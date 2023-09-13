import 'package:flame/game.dart';
import 'package:flame/components.dart';

class PGame extends FlameGame {
  PGame();

  final world = World();
  late final CameraComponent cameraComponent;

  @override
  Future<void> onLoad() async {
    await images.loadAll([
      'Tile_02.png',
      'hoot_walk.png',
      'Gold_Coin.png',
    ]);

  cameraComponent = CameraComponent(world: world);
  cameraComponent.viewfinder.anchor = Anchor.topLeft;
  addAll([cameraComponent, world]);
  }
}