import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.green,
                      size: 41,
                    ),
                  ),
                  SizedBox(width: 16), // Add padding between avatar and text
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'TurfTracker',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('My Bookings'),
              onTap: () {
                // Handle My Bookings tap
              },
            ),
            ListTile(
              title: Text('Help & FAQs'),
              onTap: () {
                // Handle Help & FAQs tap
              },
            ),
            ListTile(
              title: Text('Blogs'),
              // Handle Blogs tap
            ),
            ListTile(
              title: Text('Privacy Policies'),
              // Handle Privacy Policies tap
            ),
            ListTile(
              title: Text('Logout'),
              // Handle Logout tap
            ),
          ],
        ),
      ),
    );
  }
}

