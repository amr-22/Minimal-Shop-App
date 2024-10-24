import 'package:flutter/material.dart';
import 'package:minimal_shop_app/data.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "  Cart",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text("     Check your cart before buying"),
            Container(
              width: double.infinity,
              height: 400,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    color: Colors.white,
                    height: 80,
                    child: Row(children: [
                      Image.asset(
                        "${cartItems[index].image}",
                        height: 80,
                        width: 80,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${cartItems[index].name}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\$${cartItems[index].price}",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ]),
                  );
                },
                itemCount: cartItems.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
