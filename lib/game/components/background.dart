
/*
    lib/game/components/background.dart
*/

// IMPORTS
import 'dart:ui';
//import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:flame/components/component.dart';

// BackgroundComponent class
class BackgroundSprite extends SpriteComponent {
  // FIELDS
  static final String bgPath = "backgrounds/07_background.png";
  //static Sprite bgSprite = Sprite(bgPath);
  // CONSTRUCTOR
  BackgroundSprite(Size size) { 
    width = size.width;
    height = size.height;
    sprite = Sprite(bgPath);
  }
  // METHODS
  /*
  @override
  void resize(Size size) {
    this.x = ((size.width - this.width) / 2) + (this.width / 2);
    this.y = ((size.height - this.height) / 2) + (this.height / 2);
  }
  */
  @override
  void render(Canvas c) {
    prepareCanvas(c);
    sprite.render(c, width, height);
  }
  void update(double t) {
    // TODO
  }
} // END of BackgroundSprite


// EOF
