import 'package:ecommerce_application_powermax/models/cart.dart';
import 'package:ecommerce_application_powermax/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    //alert the user that the item has been added successfuly
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Item Added Successfuly"),
        content: Text("Check you Cart!"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 25.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                //message
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    "Everyone flies....some fly longer than others",
                    style: TextStyle(color: Colors.grey),
                  ),
                  //hot picks
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hot Picks...🔥",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //list of the products on sale
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: value.shoeShop.length,
                    itemBuilder: (context, index) {
                      Shoe shoe = value.getShoeList()[index];
                      //return the shoe
                      return ShoeTile(
                        shoe: shoe,
                        onTap: () => addShoeToCart(shoe),
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                  child: Divider(
                    color: Colors.white,
                  ),
                )
              ],
            ));
  }
}
