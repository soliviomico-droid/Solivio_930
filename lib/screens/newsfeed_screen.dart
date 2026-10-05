import 'package:flutter/material.dart';
import 'package:solivio_930/component/globalappbar_component.dart';

class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({Key? key}) : super(key: key);

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBarComponent(
        title: Text("Newsfeed", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [Text("Newsfeed Screen")],
      ),
    );
  }
}
