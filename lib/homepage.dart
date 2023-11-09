import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:turftracker/blogspage.dart';
import 'package:turftracker/helpnfaq.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _imageUrls = [
    'assets/images/soccer.png',
    'assets/images/greenfield.png',
    'assets/images/kickingball.png',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          SizedBox(height: 21),
          _buildCarouselWithControls(),
        ],
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
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: CircleAvatar(
          radius: 45,
          backgroundColor: Colors.white,
          child: Icon(
            Icons.person,
            color: Colors.green,
            size: 41,
          ),
        ),
      ),
      SizedBox(
width: 26,
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text(
            'TurfTracker',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
            ),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => HelpFaq(),));
              },
            ),
            ListTile(
              title: Text('Blogs'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BlogPage(),));
              },
            ),
            ListTile(
              title: Text('Privacy Policies'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BlogPage(),));
              },
            ),
            ListTile(
              title: Text('Logout'),
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => BlogPage(),));
             },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCarouselWithControls() {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            initialPage: 0,
            enlargeCenterPage: true,
            onPageChanged: (index, _) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: _imageUrls.map((imageUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _imageUrls.map((imageUrl) {
            int index = _imageUrls.indexOf(imageUrl);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? Colors.blue : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
