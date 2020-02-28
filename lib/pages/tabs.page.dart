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
            text: "Home",
          ),
          Tab(
            icon: new Icon(Icons.shopping_cart),
            text: "Cart",
          ),
          Tab(
            icon: Icon(Icons.perm_identity),
            text: "Profile",
          ),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5),
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
