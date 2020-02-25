import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                Container(
                  height: 90,
                  child: categoryList(),
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
//criar um widget da categoryList

//criar um widget categoryItem - de altura e largura 70, de margem 10 e padding 10.
//com boxShadow e borderRadius 64
//scrollDirection: Axis.horizontal.
