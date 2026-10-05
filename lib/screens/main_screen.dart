import 'package:flutter/material.dart';
import 'package:solivio_930/screens/friends_screen.dart';
import 'package:solivio_930/screens/newsfeed_screen.dart';
import 'package:solivio_930/screens/notification_screen.dart';
import 'package:solivio_930/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> pages = const [
    NewsfeedScreen(),
    NotificationScreen(),
    FriendsScreen(),
    ProfileScreen()
  ];

  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentpage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pinkAccent,
        currentIndex: currentpage,
        onTap: (index) {
          setState(() {
            currentpage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.amber,
              icon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              backgroundColor: Colors.deepOrange,
              icon: Icon(Icons.notification_add),
              label: 'Notification'),
          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.person),
              label: 'Friends'),
          BottomNavigationBarItem(
              backgroundColor: Colors.lime,
              icon: Icon(Icons.person_4),
              label: 'Profile')
        ],
      ),
    );
  }
}
