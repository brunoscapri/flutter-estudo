import 'package:flutter/material.dart';
import 'package:layouts/pages/cart.page.dart';
import 'package:layouts/pages/home.page.dart';
import 'package:layouts/pages/login.page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [
          HomePage(),
          CartPage(),
          LoginPage(),
        ],
      ),
      bottomNavigationBar: new TabBar(
        tabs: <Widget>[
          Tab(
            icon: new Icon(Icons.home),
          ),
          Tab(
            icon: new Icon(Icons.shopping_cart),
          ),
          Tab(
            icon: Icon(Icons.perm_identity),
          ),
        ],
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5),
        indicatorColor: Colors.blue,
      ),
    );
  }
}
