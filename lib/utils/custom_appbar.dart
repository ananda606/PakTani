import 'package:flutter/material.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      title: Text("PakTani"),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'homepage',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'keranjang',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'akun',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
