import 'package:flutter/material.dart';
import 'package:layouts/widgets/category/category-list.widget.dart';
import 'package:layouts/widgets/product/product-list.widget.dart';
import 'package:layouts/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 80,
                ),
                SearchBox(),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Categories",
                  style: Theme.of(context).textTheme.headline,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 90,
                  child: CategoryList(),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Best Selling",
                      style: Theme.of(context).textTheme.headline,
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
                  child: ProductList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
