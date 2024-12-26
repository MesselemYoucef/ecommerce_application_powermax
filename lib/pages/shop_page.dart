import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25.0),
         decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(8)), 
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Search", style: TextStyle(color: Colors.grey),),
              Icon(Icons.search, color: Colors.grey,)
            ],
          ),
        ),
        //message 
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Text("Everyone flies....some fly longer than others", style: TextStyle(color: Colors.grey),),
          //hot picks
        ),
        Row(
          children: [
            Text("Hot Picks")
          ],
        )
      ],
    );
  }
}

2:06