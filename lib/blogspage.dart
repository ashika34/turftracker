import 'package:flutter/material.dart';
import 'package:turftracker/blog1.dart';
import 'package:turftracker/blog2.dart';



class BlogPage extends StatefulWidget {
  const BlogPage({Key? key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blogs'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                
               Navigator.push(context, MaterialPageRoute(builder: (context) => BlogOne(),));
              },
              child: Image.asset(
                'assets/images/arti.png',
                height: 300,
                width: 380,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>BlogTwo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(27.0),
                child: Image.asset(
                  'assets/images/benefits.png',
                  height: 250,
                  width: 380,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
