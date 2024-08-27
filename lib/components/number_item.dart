import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tuko/models/numbers_model.dart';
import 'package:audioplayers/audioplayers.dart';

class NumberItem extends StatelessWidget {
  NumberItem({super.key, required this.item, required this.color});
  final Color color;
  final ItemModel item;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    // printCode();
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
              color: const Color(0xfffffde6), child: Image.asset(item.image!)),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpNAme,
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                item.enNAme,
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
              // Play sound
              onPressed: () {
                // player.setSourceAsset();
                player.play(AssetSource(item.sound));
              },
              icon:
                  const Icon(Icons.play_arrow, color: Colors.white, size: 35)),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}

class PhrasesITem extends StatelessWidget {
  const PhrasesITem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 330,
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  item.jpNAme,
                  style: const TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              Text(
                item.enNAme,
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
              // Play sound
              onPressed: () {
                final player = AudioPlayer();

                player.play(AssetSource(item.sound));
              },
              icon:
                  const Icon(Icons.play_arrow, color: Colors.white, size: 35)),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
