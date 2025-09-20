import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),

          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Foodies"),
                  SizedBox(width: 50),
                  Text("Home "),

                  Text("Menu"),
                  Text('About Us'),
                  Text("Contact"),
                  SizedBox(width: 20),
                  Icon(Icons.search),
                  Icon(Icons.shopping_bag),
                  ElevatedButton(onPressed: () {}, child: Text("signup")),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Text("Just come To\n FOODED for odered\n")],
                      
                    ),
                    Align(
                      alignment: AlignmentGeometry.topLeft,
                      child: Text(
                        "Satify your cravings app's pur and highly_quality food\n options.Order now for delicious meal!",
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset("images/download.jpeg")
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
