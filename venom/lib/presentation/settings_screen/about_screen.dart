import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("About"),
        ),
        body: const Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Venom 2.0.0",
                style: TextStyle(fontSize: 38.0),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "An open source app.",
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "A big thanks to the Venom developer team for their contributions:",
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Back-end dev: github.com/hamidjalili59",
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Front-end dev: github.com/navirobayo",
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ));
  }
}
