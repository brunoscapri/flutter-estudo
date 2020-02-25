import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFF5F5F5),
          padding: EdgeInsets.only(
            top: 80,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Container(
            height: 450,
            width: double.infinity,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              new BoxShadow(
                  color: Colors.black12,
                  offset: Offset(1, 2.0),
                  blurRadius: 5,
                  spreadRadius: 1),
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Sign up",
                  style: TextStyle(fontSize: 24),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
