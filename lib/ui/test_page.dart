import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/product_list_horizontal.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("title"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            HorizontalProduct(),
            Container(
              height: 20,
              width: 20,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              /*GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: 3,
                    itemBuilder: ((context, index) {
                      return Text("bac");
                      /* return RawMaterialButton(
                        onPressed: () {},
                        child: Hero(tag: 'logo', child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),)),
                      );*/
                    })),*/
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
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
                          child: Center(child: Text("abc ${index + 1}")),
                        ),
                      ),
                    );
                  },
                  itemCount: 10,

                  /*
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.teal[100],
                            child: const Text("He'd have you all unravel at the"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.teal[200],
                            child: const Text('Heed not the rabble'),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.teal[300],
                            child: const Text('Sound of screams but the'),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.teal[400],
                            child: const Text('Who scream'),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.teal[500],
                            child: const Text('Revolution is coming...'),
                          ),*/
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
