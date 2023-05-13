import 'package:flutter/material.dart';

class BikeData extends StatefulWidget {
  const BikeData({super.key, required this.title});

  final String title;

  @override
  State<BikeData> createState() => _BikeDataState();
}

class _BikeDataState extends State<BikeData> {
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
            const Text("Ingresa el cilindraje de NOMBREMoto."),
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
        onPressed: () => print("test"),
      ),
    );
  }
}
