import 'dart:html';

import 'package:flutter/material.dart';

class HorizontalProduct extends StatelessWidget {
  HorizontalProduct({
    super.key,
    this.icon,
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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 160.0,
             
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(10),
              border: Border()
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 100,
                      width: 60,
                      child: Image.network(
                        imageLink,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 10,
                  ),
                  /*
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: RichText(
                              text: TextSpan(
                                text: 'name\n',
                                children: [
                                  TextSpan(text: 'desc\n'),
                                  TextSpan(text: 'harga\n'),
                                ],
                              ),
                            ),
                          ),*/
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Text(productName),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Text(productPrice),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Text(shopLocation),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 8,
        // This next line does the trick.

        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
