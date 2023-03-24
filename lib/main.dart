import 'package:flutter/material.dart';
import 'package:test_one/screens/component/product_item.dart';
import 'package:test_one/screens/screens/products_screen.dart';

import 'data/model/product_model.dart';
import 'domain/entities/productmodel_entity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProductsScreen(),
    );
  }
}

