import 'package:flutter/material.dart';
import 'package:tuko/components/number_item.dart';
import 'package:tuko/models/numbers_model.dart';

class ColorsScreen extends StatelessWidget {
  ColorsScreen({super.key});

  final List<ItemModel> fMembers = [
    ItemModel(
        sound: "sounds/colors/black.wav",
        enNAme: "Black",
        image: "assets/images/colors/color_black.png",
        jpNAme: "Kuro"),
    ItemModel(
        sound: "sounds/colors/brown.wav",
        enNAme: "Brown",
        image: "assets/images/colors/color_brown.png",
        jpNAme: "Chairo"),
    ItemModel(
        sound: "sounds/colors/dusty yellow.wav",
        enNAme: "Dusty yellow",
        image: "assets/images/colors/color_dusty_yellow.png",
        jpNAme: "Dasutiierō"),
    ItemModel(
        sound: "sounds/colors/gray.wav",
        enNAme: "Gray",
        image: "assets/images/colors/color_gray.png",
        jpNAme: "Gurē"),
    ItemModel(
        sound: "sounds/colors/green.wav",
        enNAme: "Green",
        image: "assets/images/colors/color_green.png",
        jpNAme: "Midori"),
    ItemModel(
        sound: "sounds/colors/red.wav",
        enNAme: "Red",
        image: "assets/images/colors/color_red.png",
        jpNAme: "Aka"),
    ItemModel(
        sound: "sounds/colors/white.wav",
        enNAme: "Whiter",
        image: "assets/images/colors/color_white.png",
        jpNAme: "Shiro"),
    ItemModel(
        sound: "sounds/colors/yellow.wav",
        enNAme: "Yellow",
        image: "assets/images/colors/yellow.png",
        jpNAme: "Kiiro"),
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
          print(fMembers.length);
          return NumberItem(
            item: fMembers[index],
            color: Color(0xff79359F),
          );
        },
      ),
    );
  }
}
