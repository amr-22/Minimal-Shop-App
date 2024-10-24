import 'package:flutter/material.dart';
import 'package:minimal_shop_app/cart_page.dart';
import 'package:minimal_shop_app/widget/item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions:  [
          IconButton(
            onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartPage()),
                      );
                    },
            icon: Icon(Icons.shopping_cart),
          )
        ],
      ),
      drawer: const Drawer(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Shop",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
           const  Text(
              "Pick from a selected list of premium products",
              style: TextStyle(fontSize: 12),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                height: 400,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ItemCard(item_rank: index,);
                    }))
          ],
        ),
      ),
    );
  }
}
