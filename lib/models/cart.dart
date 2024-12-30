import 'package:ecommerce_application_powermax/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
//List of shoes that are selected
  List<Shoe> shoeShop = [
    Shoe(
        name: "UPS 1 KVA",
        price: "99.99",
        imagePath: "lib/images/image1.png",
        description: "This is an Online UPS"),
    Shoe(
        name: "UPS 1500VA",
        price: "25.0",
        imagePath: "lib/images/image2.png",
        description: "This is an offline UPS"),
    Shoe(
        name: "Power Adapter",
        price: "14.0",
        imagePath: "lib/images/image3.png",
        description: "4 Ports Power Adapter from Powermax"),
    Shoe(
        name: "Speaker Powermax",
        price: "60.0",
        imagePath: "lib/images/image4.png",
        description: "Speaker with Bluetooth"),
    Shoe(
        name: "INK Refill",
        price: "14",
        imagePath: "lib/images/image5.png",
        description: "1L Ink Refill"),
  ];
//list of the items that are put in the cart
  List<Shoe> userCart = [];
//get the list of items

  List<Shoe> getShoeList() {
    return shoeShop;
  }
//get cart

  List<Shoe> getUserCart() {
    return userCart;
  }

//add items to the cart
  void addItemToCart(Shoe item) {
    userCart.add(item);
    notifyListeners();
  }

//remove items from the cart
  void removeItemFromCart(Shoe item) {
    userCart.remove(item);
    notifyListeners();
  }
}
