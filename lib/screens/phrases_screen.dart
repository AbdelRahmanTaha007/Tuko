import 'package:flutter/material.dart';
import 'package:tuko/components/number_item.dart';
import 'package:tuko/models/numbers_model.dart';

class PhrasesScreen extends StatelessWidget {
  PhrasesScreen({super.key});

  final List<ItemModel> fMembers = [
    ItemModel(
        sound: "sounds/phrases/are_you_coming.wav",
        enNAme: "Are you Coming",
        jpNAme: "Kimasu ka"),
    ItemModel(
        sound: "sounds/phrases/dont_forget_to_subscribe.wav",
        enNAme: "Dont forget to subscribe",
        jpNAme: "Kōdoku o o wasurenaku"),
    ItemModel(
        sound: "sounds/phrases/how_are_you_feeling.wav",
        enNAme: "How are you feeling",
        jpNAme: "Go kibun wa ikagadesu ka"),
    ItemModel(
        sound: "sounds/phrases/i_love_anime.wav",
        enNAme: "I love Anime",
        jpNAme: "Watashi wa anime ga daisukidesu"),
    ItemModel(
        sound: "sounds/phrases/i_love_programming.wav",
        enNAme: "I love Programming",
        jpNAme: "Puroguramingu ga daisukidesu"),
    ItemModel(
        sound: "sounds/phrases/programming_is_easy.wav",
        enNAme: "Programming is easy",
        jpNAme: "Puroguramingu wa kantan"),
    ItemModel(
        sound: "assets/sounds/phrases/what_is_your_name.wav",
        enNAme: "What is your name? ",
        jpNAme: "Anata no namae wa nanidesu ka?"),
    ItemModel(
        sound: "assets/sounds/phrases/where_are_you_going.wav",
        enNAme: "Where are you going ",
        jpNAme: "Doko ni iku no"),
    ItemModel(
        sound: "assets/sounds/phrases/yes_im_coming.wav",
        enNAme: "Yes Im Coming ",
        jpNAme: "Hai, ikimasu"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Colors",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff4a322b),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: fMembers.length,
        itemBuilder: (BuildContext context, int index) {
          return PhrasesITem(
            item: fMembers[index],
            color: Color(0xff52afd6),
          );
        },
      ),
    );
  }
}
