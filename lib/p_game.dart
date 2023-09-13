import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:p_game/actors/hoot.dart';

class PGame extends FlameGame {
  PGame();

  late HootPlayer _hoot;

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

  _hoot = HootPlayer(
      position: Vector2(128, canvasSize.y - 70),
    );
    world.add(_hoot);
  }
}