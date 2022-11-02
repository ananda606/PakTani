import 'package:flutter/material.dart';

class keranjang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
