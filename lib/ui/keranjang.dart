import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/custom_appbar.dart';

class KeranjangPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
            preferredSize: Size.fromHeight(60), child: CustomAppbar()),
      body: ListView(
        children: [
          Text('Keranjang'),
          Row(
            children: [
              Text('abp'),
              Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.green,
                value: true,
                onChanged: (_) {},
              ),
              Column(
                children: [
                  
                  Text('nama toko'),
                  Text('wilayah'),
                  SizedBox(height: 20,width: 20,child: DecoratedBox(decoration: BoxDecoration(color: Colors.green),))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
