import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 500.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(
                  "assets/product-10.png",
                  width: double.infinity,
                  fit: BoxFit.fitHeight,
                ),
              ),
            )
          ];
        },
        body: Container(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Nike Long Sleeve",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Details",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Nike Long Sleeve shirt is the most expensive shirt ever made. ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    color: Colors.blue,
                    child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.shopping_cart),
                            Container(
                                padding: EdgeInsets.only(left: 115),
                                child: Text("Add to cart")),
                          ],
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
