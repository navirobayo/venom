import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'about')
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
                "Venom Beta 1.1",
                style: TextStyle(fontSize: 38.0),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "An open source app!",
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "github.com/navirobayo",
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ));
  }
}
