import 'package:flutter/material.dart';
import 'package:nectar/feature/cart/widgets/minu_products_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            'My Cart',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      body: minuProductsCart(),
    );
  }
}
