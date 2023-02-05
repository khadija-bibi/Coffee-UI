import 'package:coffee_ui/utils/coffeeTile.dart';
import 'package:coffee_ui/utils/coffeeType.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeeType = [
    [
      "Cappuccino",
      true,
    ],
    [
      "Latte",
      false,
    ],
    ["Black", false],
    ["Tea", false],
  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      for(int i=0;i<coffeeType.length;i++){
        coffeeType[i][1]=false;
      }
      coffeeType[index][1]=true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        shadowColor: Colors.grey[900],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
            child: Text(
              "FIND A BEST COFFEE FOR YOU",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.brown),
                  hintText: "Find your coffee .....",
                  focusedBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(color: Colors.grey)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeType.length,
              itemBuilder: (context, index) {
                return CoffeeType(
                  coffee_type: coffeeType[index][0],
                  is_selected: coffeeType[index][1],
                  onTap: () {
                    coffeeTypeSelected(index);
                  },
                );
              },
            ),
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CoffeeTile(coffee_image_path: "assets/Coffee1.jpg",
              coffee_name: "Cappuccino",
              coffee_price: "\$4.20",
              coffee_spec: "With Almond"),
              CoffeeTile(coffee_image_path: "assets/Coffee2.jpg",
                  coffee_name: "Latte",
                  coffee_price: "\$4.00",
                  coffee_spec: "With Almond"),
              CoffeeTile(coffee_image_path: "assets/coffee3.jpg",
                  coffee_name: "Milk Coffee",
                  coffee_price: "\$4.50",
                  coffee_spec: "With Almond"),
              CoffeeTile(coffee_image_path: "assets/coffee4.jpg",
                  coffee_name: "Black Coffee",
                  coffee_price: "\$3.50",
                  coffee_spec: "With Almond"),



            ],
          ))
        ],
      ),
    );
  }
}
