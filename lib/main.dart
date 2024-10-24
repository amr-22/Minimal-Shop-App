import 'package:flutter/material.dart';
import 'package:minimal_shop_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart,
              size: 150,
              color: Colors.grey[600],
            ),
            const Text(
              "Minimal Shop",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
                width: 60,
                height: 60,
                margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                      color: Colors.black,
                    )),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                      size: 40,
                      color: Colors.black,
                    )))
          ],
        ),
      ),
    );
  }
}
