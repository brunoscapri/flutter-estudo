import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.red,
            height: 80,
          ),
        ),
        Container(
          color: Colors.yellow,
          height: 80,
        ),
      ],
    ));
  }
}
