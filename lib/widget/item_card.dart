import 'package:flutter/material.dart';
import 'package:minimal_shop_app/data.dart';

class ItemCard extends StatefulWidget {
  ItemCard({super.key, required this.item_rank});
  int item_rank;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: double.infinity,
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey[100]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 25),
            color: Colors.white,
            width: 230,
            height: 200,
            child: Image.asset("${items[widget.item_rank].image}",
                fit: BoxFit.contain),
          ),
          Text(
            "  ${items[widget.item_rank].name}",
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("    \$${items[widget.item_rank].price}"),
            IconButton(
                onPressed: () {
                  setState(() {
                    if (items[widget.item_rank].inCart == false) {
                      cartItems.add(items[widget.item_rank]);
                      items[widget.item_rank].inCart = true;
                    }

                  });
                },
                icon: Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.grey[600],
                ))
          ])
        ],
      ),
    );
  }
}
