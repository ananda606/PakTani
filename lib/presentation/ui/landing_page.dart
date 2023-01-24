import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/custom_appbar.dart';
import 'package:get/get.dart';

class TabController extends GetxController {
  int _x = 0;
  int get x => _x;
  void increaseX() {
    _x++;
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppbar(),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                color: Colors.blue,
                child: const Center(child: Text("carousel")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Expanded(
                    child: Card(
                      color: Colors.blue,
                      child: SizedBox(
                        height: 180,
                        width: 280,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Product Quality"),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Card(
                      color: Colors.blue,
                      child: SizedBox(
                        height: 180,
                        width: 280,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Quick Service"),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Card(
                      child: SizedBox(
                        height: 180,
                        width: 280,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Stay Fresh"),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Card(
                      child: SizedBox(
                        height: 180,
                        width: 280,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Socially Responsible Business"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                color: Colors.white,
                child: const Center(child: Text("2022 all right reserved")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
