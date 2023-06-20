import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ride Results"),
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 25,
          ),
          Card(
            child: SizedBox(
              width: 150,
              height: 300,
              child: Center(
                  child: Text(
                      "Here goes the ListViewBuilder with the historical gas prices that the user has entered.")),
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
