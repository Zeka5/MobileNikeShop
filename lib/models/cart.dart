import 'package:flutter/material.dart';
import 'package:nike_shop_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Jordan',
      price: '220',
      imagePath: 'lib/images/shoe5.jpg',
      description: 'Inspired by the \'90s. Ready for the future.',
    ),
    Shoe(
      name: 'Air Force',
      price: '250',
      imagePath: 'lib/images/airForce1.png',
      description:
          'Get a taste of our legendary Tuned Air technology with the Nike Air Max Plus.',
    ),
    Shoe(
      name: 'Air Max',
      price: '180',
      imagePath: 'lib/images/airMaxPlus.png',
      description:
          'The b-ball icon that puts a fresh spin on what you know best.',
    ),
    Shoe(
      name: 'V2K',
      price: '230',
      imagePath: 'lib/images/v2k.png',
      description:
          'Fast forward. Rewind. Doesn\'t matter—this shoe takes retro into the future.',
    )
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoes() {
    return shoeShop;
  }

  List<Shoe> getCart() {
    return userCart;
  }

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
