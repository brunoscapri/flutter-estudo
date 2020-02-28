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
            //color: Colors.white,
            height: 80,
            child: productList(),
          ),
        ),
        Container(
          color: Colors.black12,
          height: 80,
          child: Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "TOTAL",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$1234",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Checkout",
                      style: TextStyle(color: Theme.of(context).accentColor),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

Widget productList() {
  return Container(
    child: ListView(
      children: <Widget>[
        productItem(),
        productItem(),
        productItem(),
        productItem(),
        productItem(),
        productItem(),
      ],
    ),
  );
}

Widget productItem() {
  return Container(
    margin: EdgeInsets.all(15),
    width: 150,
    child: Row(
      children: <Widget>[
        Image.asset(
          "assets/product-3.png",
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Caixa Tosquera",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
              Text(
                "\$200",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: 40,
                        child: FlatButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.add,
                            size: 15,
                          ),
                        ),
                      ),
                      Container(
                        width: 40,
                        child: Text("1"),
                        alignment: Alignment.center,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 40,
                        child: FlatButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.remove,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        )
      ],
    ),
  );
}
