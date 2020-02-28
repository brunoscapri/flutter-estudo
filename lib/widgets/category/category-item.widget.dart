import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  CategoryItem({@required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(64),
          ),
          boxShadow: [
            new BoxShadow(
              color: Colors.black12,
              offset: new Offset(1, 1),
              blurRadius: 5,
              spreadRadius: 2,
            )
          ]),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Image.asset(image),
    );
  }
}
