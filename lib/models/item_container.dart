import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';

class Item {
  const Item({
    required this.sound,
    required this.color,
  });
  final String sound;
  final Color color;

  Future<void> playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(sound));
  }
}
