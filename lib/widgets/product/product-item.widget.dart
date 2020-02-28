import 'package:flutter/material.dart';
import 'package:layouts/pages/product.page.dart';

class ProductItem extends StatelessWidget {
  final String image;
  final String description;
  final String title;
  final double price;

  ProductItem(
      {@required this.image,
      @required this.description,
      @required this.title,
      @required this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      width: 170,
      decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(9))),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ProductPage()));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              image,
              fit: BoxFit.cover,
              width: 170,
              height: 170,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              child: Text(
                title,
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "\$ $price",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
