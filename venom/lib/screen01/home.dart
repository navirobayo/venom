import 'package:flutter/material.dart';
import 'package:venom/screen02/bikedata.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            const Text("Ingresa el nombre de la motocicleta"),
            const SizedBox(
              height: 50,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: 300,
              child: const TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BikeData(
                title: widget.title,
              ),
            ),
          );
        },
      ),
    );
  }
}
