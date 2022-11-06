import 'package:flutter/material.dart';

class HorizontalProduct extends StatelessWidget {
  const HorizontalProduct({super.key});

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
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text("image"),
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
                    child: Text("nama produk"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Text("desc"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Text("harga"),
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
