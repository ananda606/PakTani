import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/product_provider.dart';
import 'package:flutter_application_1/provider/user_provider.dart';
import 'package:flutter_application_1/utils/carousel_list.dart';
import 'package:flutter_application_1/utils/custom_appbar.dart';
import 'package:flutter_application_1/utils/ecommerce_template.dart';
import 'package:flutter_application_1/utils/text_icon.dart';
import 'package:flutter_application_1/utils/product_list_horizontal.dart';
import 'package:flutter_application_1/utils/product_list_vertical.dart';

import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  late String searchString;
  @override
  void initState() {
    searchString = '';
    super.initState();
  }

  void setSearchString(String value) => setState(() {
        searchString = value;
      });
  @override
  Widget build(BuildContext context) {
    print("render");
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppbar(),
      ),
      body: Consumer<ProductProvider>(
        builder: ((context, value, child) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SearchBar(onChanged: setSearchString),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Special Offers",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                CarouselList(),
                SizedBox(
                  height: 10,
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //kategori pilihan
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Kategori Pilihan",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 300,
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: HorizontalProduct(
                                  imageLink:
                                      "assets/ruslan-bardash-4kTbAMRAHtQ-unsplash.jpg",
                                  productName: "downy",
                                  productPrice: "2123",
                                  shopLocation: "depok",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      //menu kategori dan top up
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.blue,
                            height: 300,
                            width: 400,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Top Up ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 80,
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child:
                                              Icon(Icons.monetization_on_sharp),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Gopay"),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Rp 100000"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                //menu list produk
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Product List horizontal",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                HorizontalProduct(
                    imageLink: "assets/ruslan-bardash-4kTbAMRAHtQ-unsplash.jpg",
                    productName: "productName",
                    productPrice: "19023123",
                    shopLocation: "bali"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Product List vertical",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                VerticalProduct(
                  imageLink: "assets/ruslan-bardash-4kTbAMRAHtQ-unsplash.jpg",
                  productName: "wakanda",
                  productPrice: "10000000",
                  shopLocation: "depok",
                ),

                Container(
                  height: 80,
                  width: 80,
                  color: Colors.amber,
                  child: Center(
                    child: Text("copyright 2022"),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
