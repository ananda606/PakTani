import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/custom_appbar.dart';

class ProductPage extends StatefulWidget {
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    print("render");
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppbar(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 200,
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("carousel"),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //kategori pilihan
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Kategori Pilihan"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 80,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("product horizontal"),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //menu kategori dan top up
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Top Up & Tagihan"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 80,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("pulse"),
                          ),
                        )
                      ],
                    ),
                  ]),
              //menu list produk

              ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 90,
                        width: 100,
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("image${index + 1}"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("produk ${index + 1}"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("harga produk ${index + 1}"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("kota ${index + 1}"),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),

              Container(
                height: 80,
                width: 80,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
