import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messenger/inc/app_theme.dart';
import 'package:messenger/pages/feedpage.dart';
import 'package:messenger/pages/homepage.dart';
import 'package:messenger/pages/notificationpage.dart';
import 'package:messenger/pages/profilepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int navIndex = 0;
  List pages = [
    HomePage(),
    FeedPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  void changeNav(int index) {
    setState(() {
      navIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Messenger',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: AppTheme.textColor),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            iconSize: 15,
            color: Colors.white,
            icon: Icon(
              Icons.edit,
              color: AppTheme.secondaryColor,
              size: 15,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeNav,
        currentIndex: navIndex,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        selectedItemColor: Colors.black54,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "messages"),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_outlined), label: "feed"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: "notification"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
      body: pages[navIndex],
    );
  }
}
