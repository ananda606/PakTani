import 'package:flutter/material.dart';

class CustomAppbar extends StatefulWidget {
  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  final List _isHovering = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      actions: [
        TextButton(
          onPressed: (() {}),
          onHover: (value) {
            _isHovering[0] = value;
          },
          child: Text(
            "Home",
            style: TextStyle(
              color: _isHovering[0] ? Colors.black : Colors.green,
            ),
          ),
        ), //homepage
        TextButton(
          onPressed: (() {}),
          child: Text(
            "Delivery",
            style: TextStyle(
              color: _isHovering[1] ? Colors.green : Colors.black,
            ),
          ),
        ), //delivery
        TextButton(
          onPressed: (() {}),
          child: Text(
            "Order",
            style: TextStyle(
              color: _isHovering[2] ? Colors.green : Colors.black,
            ),
          ),
        ), //order
        TextButton(
          onPressed: (() {}),
          child: Text(
            "About",
            style: TextStyle(
              color: _isHovering[3] ? Colors.green : Colors.black,
            ),
          ),
        ), //profile
      ],
    );
  }
}
