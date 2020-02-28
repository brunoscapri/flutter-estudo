import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
        vsync: this,
        duration: Duration(
          seconds: 1,
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
}
