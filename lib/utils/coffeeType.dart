import 'package:flutter/material.dart';
class CoffeeType extends StatelessWidget {
  final String coffee_type;
  final bool is_selected;
  final VoidCallback onTap;

  const CoffeeType({required this.coffee_type,required this.is_selected,required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Padding(
          padding: EdgeInsets.only(left: 25),
      child: Text(coffee_type,style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: is_selected? Colors.brown:Colors.white,
      )),),
    );
  }
}
