import 'package:flutter/material.dart';
import 'package:layouts/pages/product.page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 80,
                ),
                search(),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 90,
                  child: categoryList(),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Best Selling",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 350,
                  child: productList(context),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget search() {
  return Container(
    height: 60,
    decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.all(Radius.circular(128))),
    child: Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: <Widget>[
          Icon(Icons.search),
          Container(
            width: 300,
            padding: EdgeInsets.only(left: 10),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: "Search...",
                labelStyle: TextStyle(color: Colors.blue, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget categoryList() {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
      ],
    ),
  );
}

Widget categoryItem() {
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
    child: Image.asset("assets/Icon_Devices.png"),
  );
}

Widget productList(context) {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        productItem(context),
        productItem(context),
        productItem(context),
      ],
    ),
  );
}

Widget productItem(context) {
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
            "assets/product-7.png",
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
              "Titulo do produto",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Marca",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "\$ 200",
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
