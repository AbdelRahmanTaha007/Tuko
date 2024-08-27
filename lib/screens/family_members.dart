import 'package:flutter/material.dart';
import 'package:tuko/components/number_item.dart';
import 'package:tuko/models/numbers_model.dart';

class FamilyMembersScreen extends StatelessWidget {
  FamilyMembersScreen({super.key});

  final List<ItemModel> fMembers = [
    ItemModel(
        sound: "sounds/family_members/father.wav",
        enNAme: "Father",
        image: "assets/images/family_members/family_father.png",
        jpNAme: "Chichioya"),
    ItemModel(
        sound: "sounds/family_members/mother.wav",
        enNAme: "Mother",
        image: "assets/images/family_members/family_mother.png",
        jpNAme: "Hahaoya"),
    ItemModel(
        sound: "sounds/family_members/grand father.wav",
        enNAme: "Grand Father",
        image: "assets/images/family_members/family_grandfather.png",
        jpNAme: "Sofu"),
    ItemModel(
        sound: "sounds/family_members/grand mother.wav",
        enNAme: "Grand Mother",
        image: "assets/images/family_members/family_grandmother.png",
        jpNAme: "Sobo"),
    ItemModel(
        sound: "sounds/family_members/older bother.wav",
        enNAme: "Older Brother ",
        image: "assets/images/family_members/family_older_brother.png",
        jpNAme: "Ani"),
    ItemModel(
        sound: "sounds/family_members/older sister.wav",
        enNAme: "Older Sister",
        image: "assets/images/family_members/family_older_sister.png",
        jpNAme: "Ane"),
    ItemModel(
        sound: "sounds/family_members/younger brohter.wav",
        enNAme: "Younger Brother",
        image: "assets/images/family_members/family_younger_brother.png",
        jpNAme: "Otōto"),
    ItemModel(
        sound: "sounds/family_members/younger sister.wav",
        enNAme: "Younger Sister",
        image: "assets/images/family_members/family_younger_sister.png",
        jpNAme: "Imōto"),
    ItemModel(
        sound: "sounds/family_members/son.wav",
        enNAme: "Son",
        image: "assets/images/family_members/family_son.png",
        jpNAme: "Musuko"),
    ItemModel(
        sound: "sounds/family_members/daughter.wav",
        enNAme: "Daughter",
        image: "assets/images/family_members/family_daughter.png",
        jpNAme: "Musume"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Family Members",
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
            color: Color(0xff5e8a3f),
          );
        },
      ),
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