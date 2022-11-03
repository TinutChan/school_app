import 'package:api_app/home/screens/homescreen.dart';
import 'package:api_app/home/screens/message_screen.dart';
import 'package:api_app/home/screens/newsfeed_screen.dart';
import 'package:api_app/home/screens/notification_screen.dart';
import 'package:api_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class ButtonNavigation extends StatefulWidget {
  const ButtonNavigation({super.key});

  @override
  State<ButtonNavigation> createState() => _ButtonNavigationState();
}

class _ButtonNavigationState extends State<ButtonNavigation> {
  int currentIndex = 0;
  void navigationBottomBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> screens = [
    const HomeScreen(),
    const NewsFeedScreen(),
    const MessageScreen(),
    const NotificationScreen(),
  ];

  final List<dynamic> titleScreen = [
    'Home',
    'News Feed',
    'Messages',
    'Notifications'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEdgeDragWidth: MediaQuery.of(context).size.width,
      drawer: const Drawer(
        child: CustomDrawerWidget(),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xff9ef01a)),
        title: const Text('Home', style: TextStyle(color: Color(0xff9ef01a))),
        backgroundColor: const Color(0xff004b23),
        toolbarHeight: 75,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: navigationBottomBar,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff004b23),
        fixedColor: const Color(0xff9ef01a),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'News Feed'),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Messages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notification'),
        ],
      ),
    );
  }
}
