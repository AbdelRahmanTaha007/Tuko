import 'package:flutter/material.dart';
import 'package:tuko/components/category_item.dart';
import 'package:tuko/screens/colors_screen.dart';
import 'package:tuko/screens/family_members.dart';
import 'package:tuko/screens/numbers_screen.dart';
import 'package:tuko/screens/phrases_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffffce5),
      appBar: AppBar(
        backgroundColor: const Color(0xff4a322b),
        title: const Text(
          "Toku",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NumbersScreen(),));
            },
            colour: Color(0xfffa9532),
            text: "Numbers",
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyMembersScreen(),));
            },
            colour: Color(0xff5e8a3f),
            text: "Family Members",
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ColorsScreen(),));
            },
            colour: Color(0xff864caf),
            text: "Colors",
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PhrasesScreen(),));
            },
            colour: Color(0xff52afd6),
            text: "Phrases",
          ),
        ],
      ),
    );
  }
}
