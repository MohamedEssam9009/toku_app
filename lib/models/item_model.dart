import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;
  const ItemModel({
    this.image,
    required this.jpName,
    required this.enName,
    required this.sound,
  });

  void playSound() async {
    AudioPlayer().play(AssetSource(sound));
    // final player = AudioPlayer();
    // await player.play(AssetSource(sound));
  }
}
