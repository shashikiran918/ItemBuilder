import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    products: List<String>.generate(500, (i) => "Product List: $i"),
  ));
}

class MyApp extends StatelessWidget {
  final List<String> products;

  MyApp({ required this.products}) ;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text("ITEM BUILDER"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${products[index]}'),
            );
          },
        ),
      ),
    );
  }
}