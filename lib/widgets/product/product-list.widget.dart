import 'package:flutter/cupertino.dart';
import 'package:layouts/widgets/product/product-item.widget.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ProductItem(
            image: "assets/product-1.png",
            description: "BOSE",
            title: "Sound System",
            price: 200.5,
          ),
          ProductItem(
            image: "assets/product-2.png",
            description: "ROLEX",
            title: "Watch",
            price: 5000,
          ),
          ProductItem(
            image: "assets/product-3.png",
            description: "JBL",
            title: "Caixinha",
            price: 50,
          ),
          ProductItem(
            image: "assets/product-4.png",
            description: "Moloskine",
            title: "Caderno",
            price: 300,
          ),
          ProductItem(
            image: "assets/product-5.png",
            description: "Samsung",
            title: "Galaxy Jf*da-se ",
            price: 400,
          ),
          ProductItem(
            image: "assets/product-6.png",
            description: "ONKYO",
            title: "Mais uma caixa",
            price: 100,
          ),
          ProductItem(
            image: "assets/product-7.png",
            description: "Apple",
            title: "Air Pods falseta",
            price: 159.99,
          ),
          ProductItem(
            image: "assets/product-8.png",
            description: "Soulja Boy",
            title: "Wii falseta",
            price: 19.99,
          ),
          ProductItem(
            image: "assets/product-9.png",
            description: "LG",
            title: "Only god knows",
            price: 20,
          ),
          ProductItem(
            image: "assets/product-10.png",
            description: "Nike",
            title: "Long Sleeve Shirt",
            price: 40,
          ),
        ],
      ),
    );
  }
}
