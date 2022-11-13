import 'package:flutter/material.dart';

class CarouselList extends StatefulWidget {
  const CarouselList({super.key});

  @override
  State<CarouselList> createState() => _CarouselListState();
}

class _CarouselListState extends State<CarouselList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("25%",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Today's Special,",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Get discount for every order, only valid for today",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network("assets/plants.jpg",fit: BoxFit.contain,),
            ),
          ],
        ),
      ),
    );
  }
}
