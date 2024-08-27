//Refactor code
//Custom Widget
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key, this.text, this.colour,this.onTap});
  final String? text;
  final Color? colour;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        padding: const EdgeInsets.only(left: 15),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: colour,
        child: Text(
          text!,
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
