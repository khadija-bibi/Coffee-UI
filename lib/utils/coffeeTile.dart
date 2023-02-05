import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String coffee_image_path;
  final String coffee_name;
  final String coffee_spec;
  final String coffee_price;

  CoffeeTile(
      {required this.coffee_image_path,
      required this.coffee_name,
      required this.coffee_spec,
      required this.coffee_price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: Container(
        width: 200,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(coffee_image_path),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(coffee_name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(coffee_spec),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(coffee_price),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_box,
                        color: Colors.brown,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
