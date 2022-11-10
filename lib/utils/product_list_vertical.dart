import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/text_icon.dart';

class VerticalProduct extends StatelessWidget {
  VerticalProduct({
    super.key,
    required this.imageLink,
    required this.productName,
    required this.productPrice,
    required this.shopLocation,
  });
  IconData? icon;
  String imageLink;
  String productName;
  String productPrice;
  String shopLocation;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
        ),
        child: GridView.builder(
          primary: false,
          padding: const EdgeInsets.all(20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return ElevatedButton(
              onPressed: () {},
              child: Hero(
                tag: 'logo$index',
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(imageLink),
                      Divider(
                        height: 10,
                      ),
                      Text("${productName} ${index + 1}"),
                      Text(productPrice),
                      TextIcon(
                        icon: Icons.location_on,
                        text: shopLocation,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
