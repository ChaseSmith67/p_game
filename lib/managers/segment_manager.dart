import 'package:flame/components.dart';

import '../objects/ground.dart';
import '../objects/platform.dart';
import '../objects/coin.dart';

class Block {
  // gridPosition position is always segment based X,Y.
  // 0,0 is the bottom left corner.
  // 10,10 is the upper right corner.
  final Vector2 gridPosition;
  final Type blockType;
  Block(this.gridPosition, this.blockType);
}

final segments = [
  segment0,
  segment1,
];

final segment0 = [
  Block(Vector2(0, 0), Ground),
  Block(Vector2(1, 0), Ground),
  Block(Vector2(2, 0), Ground),
  Block(Vector2(3, 0), Ground),
  Block(Vector2(4, 0), Ground),
  Block(Vector2(5, 0), Ground),
  Block(Vector2(5, 2), Platform),
  Block(Vector2(6, 0), Ground),
  Block(Vector2(6, 2), Platform),
  Block(Vector2(7, 0), Ground),
  Block(Vector2(7, 2), Platform),
  Block(Vector2(8, 0), Ground),
  Block(Vector2(9, 0), Ground),
];

final segment1 = [
  Block(Vector2(0, 0), Ground),
  Block(Vector2(1, 0), Ground),
  Block(Vector2(2, 0), Ground),
  Block(Vector2(3, 2), Platform),
  Block(Vector2(3, 0), Ground),
  Block(Vector2(4, 2), Platform),
  Block(Vector2(4, 0), Ground),
  Block(Vector2(5, 2), Platform),
  Block(Vector2(5, 0), Ground),
  Block(Vector2(6, 0), Ground),
  Block(Vector2(7, 0), Ground),
  Block(Vector2(8, 0), Ground),
  Block(Vector2(9, 0), Ground),
];