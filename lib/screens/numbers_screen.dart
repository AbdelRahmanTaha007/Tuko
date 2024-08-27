import 'package:flutter/material.dart';
import 'package:tuko/components/number_item.dart';
import 'package:tuko/models/numbers_model.dart';

class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});
  
///////////////////////////////////////
  final List<ItemModel> numbers = [
    ItemModel(
        sound: "sounds/numbers/number_one_sound.mp3",
        enNAme: "Father",
        image: "assets/images/numbers/number_one.png",
        jpNAme: "Ichi"),
    ItemModel(
        sound: "sounds/numbers/number_two_sound.mp3",
        enNAme: "Two",
        image: "assets/images/numbers/number_two.png",
        jpNAme: "Ni"),
    ItemModel(
        sound: "sounds/numbers/number_three_sound.mp3",
        enNAme: "Three",
        image: "assets/images/numbers/number_three.png",
        jpNAme: "San"),
    ItemModel(
        sound: "sounds/numbers/number_four_sound.mp3",
        enNAme: "Four",
        image: "assets/images/numbers/number_four.png",
        jpNAme: "Shi"),
    ItemModel(
        sound: "sounds/numbers/number_five_sound.mp3",
        enNAme: "Five",
        image: "assets/images/numbers/number_five.png",
        jpNAme: "Go"),
    ItemModel(
        sound: "sounds/numbers/number_six_sound.mp3",
        enNAme: "Six",
        image: "assets/images/numbers/number_six.png",
        jpNAme: "Roku"),
    ItemModel(
        sound: "sounds/numbers/number_seven_sound.mp3",
        enNAme: "Seven",
        image: "assets/images/numbers/number_seven.png",
        jpNAme: "Sebun"),
    ItemModel(
        sound: "sounds/numbers/number_eight_sound.mp3",
        enNAme: "Eight",
        image: "assets/images/numbers/number_eight.png",
        jpNAme: "Hachi"),
    ItemModel(
        sound: "sounds/numbers/number_nine_sound.mp3",
        enNAme: "Nine",
        image: "assets/images/numbers/number_nine.png",
        jpNAme: "Kyū"),
    ItemModel(
        sound: "sounds/numbers/number_ten_sound.mp3",
        enNAme: "Ten",
        image: "assets/images/numbers/number_ten.png",
        jpNAme: "Jū"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Numbers",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff4a322b),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          print(numbers.length);
          return NumberItem(
          item: numbers[index],
          color: Color(0xfffa9532),);
        },
      ),

      // ListView(
      //   children: [
      //     // getList(numbers)
      //     NumberItem(number: numbers[0]),
      //     NumberItem(number: numbers[1]),
      //     NumberItem(number: numbers[2]),
      //     NumberItem(number: numbers[3]),
      //     NumberItem(number: numbers[4]),
      //     NumberItem(number: numbers[5]),
      //     NumberItem(number: numbers[6]),
      //     NumberItem(number: numbers[7]),
      //     NumberItem(number: numbers[8]),
      //     NumberItem(number: numbers[9]),
      //   ],
      // ),
    );
  }
}

// List<Widget> getList(List<Numbers> numbers) {
//   List<Widget> itemList = [];
//   for (var i = 0; i < numbers.length; i++) {
//     itemList.add(NumberItem(number: numbers[i]));
//   }
//   return itemList;
// }
