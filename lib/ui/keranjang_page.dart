import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/custom_appbar.dart';
import 'package:flutter_application_1/utils/ecommerce_template.dart';

class KeranjangPage extends StatefulWidget {
  @override
  State<KeranjangPage> createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
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
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60), child: CustomAppbar()),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          SearchBar(onChanged: setSearchString),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 2 / 3,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: Text(
                    "Keranjang",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Total Harga",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Rp.12313213120",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.blue,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Beli",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
