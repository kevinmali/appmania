import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    // itemname,itemprice, itempic
    ["Morden table", "7999", "assets/images/table1.png"],
    ["Morden table", "7999", "assets/images/table1.png"],
    ["Morden table", "7999", "assets/images/table1.png"],
    ["Morden table", "7999", "assets/images/table1.png"],
  ];

  //list of cartitems
  List cartItems = [];

  get shopItems => _shopItems;

  get CartItems => cartItems;

  //additem to cart
  void addItemToCart(int index) {
    cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //removing item from the cart
  void removeItemToCart(int index) {
    cartItems.removeAt(index);
    notifyListeners();
  }

//calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
