
/*
    lib/game/game.dart
*/

// IMPORTS

// material design
import 'package:flutter/material.dart';

// flame game engine
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';

// components
import 'components/background.dart';
import 'components/backgroundSprite.dart';
import 'components/simple.dart';

// END of IMPORTS


// Palette class stores global color values
class Palette {
  //static const PaletteEntry black = BasicPalette.black;
  static const PaletteEntry WHITE = BasicPalette.white;
  //static const PaletteEntry GREY  = PaletteEntry(Color(0xFF404040));
  //static const PaletteEntry red   = PaletteEntry(Colors.red);
  static const PaletteEntry GREEN = PaletteEntry(Colors.green);
  //static const PaletteEntry blue  = PaletteEntry(Colors.blue);
} // END of Palette


// text rendering styles
//TextConfig regular = TextConfig(color: Palette.WHITE.color);
//TextConfig small   = regular.withFontSize(14.0);
//TextConfig tiny    = regular.withFontSize(12.0);

const List<String> allImages = [
  "backgrounds/01_ground.png", 
  "backgrounds/07_background.png"
];

// GravityDigGame class
class GravityDigGame extends BaseGame {
  // CONSTRUCTOR
  GravityDigGame() {
    // load all image assets
    Flame.images.loadAll(allImages);
    // enter fullscreen mode
    Flame.util.fullScreen();
    // start the game
    _start();
  }
  // METHODS
  _start() async {
    // get screen size
    Size size = await Flame.util.initialDimensions();
    // add components
    debugPrint(Flame.images.loadedFiles.toString());
//    add(BackgroundSprite(size));
    add(BackgroundSpriteComponent(size, "backgrounds/01_ground.png"));
    add(SimpleComponent(size, Palette.GREEN.paint));
  }
} // END of GravityDigGame


// EOF
