import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:appmania/first_page.dart';
import 'product_detail.dart';
import 'cart_page.dart';
import 'list.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => Firstpage(),
      "product_detail": (context) => ProductDetail(),
      "cart_page": (context) => Cartpage(),
    },
  ));
}
