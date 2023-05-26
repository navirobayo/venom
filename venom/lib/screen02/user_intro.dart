import 'package:flutter/material.dart';
import 'package:venom/screen03/tool_kit.dart';

class UserIntro extends StatelessWidget {
  const UserIntro({Key? key, required this.userName}) : super(key: key);
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Working title"),
      ),
      body: Center(
        child: ListView(children: [
          const SizedBox(
            height: 50,
          ),
          Center(child: Text("Welcome, $userName")),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Card(
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Center(child: Text("Tracker")),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Card(
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ToolKit(),
                      ),
                    );
                  },
                  child: const SizedBox(
                    width: 150,
                    height: 150,
                    child: Center(child: Text("Toolkit")),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print("test");
          },
          label: const Text("New Ride"),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          icon: const Icon(Icons.add)),
      bottomNavigationBar: BottomAppBar(
        child: Row(children: <Widget>[
          IconButton(
            onPressed: () {
              print("test");
            },
            icon: const Icon(Icons.more_vert),
          )
        ]),
      ),
    );
  }
}
