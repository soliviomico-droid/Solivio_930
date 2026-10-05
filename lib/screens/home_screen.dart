import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hello World",
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
          SizedBox(height: 70),
          Text(
            "How are you?",
            style: TextStyle(color: Colors.pink),
          ),
          SizedBox(height: 50),
          Row(
            children: [
              Text("I am a student",
                  style: TextStyle(
                      color: Colors.orange, fontStyle: FontStyle.italic)),
              SizedBox(width: 50),
              Text("MobApp Development is fun",
                  style: TextStyle(color: Colors.black))
            ],
          )
        ],
      ),
    );
  }
}
