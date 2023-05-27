import 'package:flutter/material.dart';

class BikeData extends StatefulWidget {
  const BikeData({Key? key}) : super(key: key);
  final bikeName;

  @override
  _BikeDataState createState() => _BikeDataState();
}

class _BikeDataState extends State<BikeData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("{ }"),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: const [
                Text("Here goes some text"),
                Text("Here goes a second widget or something else")
              ],
            ),
            const SizedBox(height: 16),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter the value',
              ),
              onChanged: handleValueChange,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: handleConvert,
              child: const Text('Convert'),
            ),
            const SizedBox(height: 16),
            const Text("More text"),
            const SizedBox(
              height: 16,
            ),
            const Text("Gas prices"),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
