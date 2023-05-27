import 'package:flutter/material.dart';
import 'package:venom/screen04/bike_data.dart';

class RideAnalyzer extends StatelessWidget {
  const RideAnalyzer({super.key});
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text("Venom Ver. 1.0"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            const Text("Venom Ver 1.0", style: TextStyle(fontSize: 25)),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              child: TextField(
                controller: _nameController,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter a name for your bike"),
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
                bikeName: _nameController.text,
              ),
            ),
          );
        },
        backgroundColor: Colors.grey,
      ),
    );
  }
}
