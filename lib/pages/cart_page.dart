import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nike_shop_app/components/cart_item.dart';
import 'package:nike_shop_app/models/cart.dart';
import 'package:nike_shop_app/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: value.getCart().length,
                itemBuilder: (context, index) {
                  Shoe shoe = value.getCart()[index];
                  return CartItem(
                    shoe: shoe,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
