import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';  



void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Carousel'),
        ),
        body: CarouselWithControls(
          imageUrls: [
    'assets/images/soccer.png',
    'assets/images/greenfield.png',
    'assets/images/kickingball.png',

          ],
        ),
      ),
    ));

class CarouselWithControls extends StatefulWidget {
  final List<String> imageUrls;

  CarouselWithControls({required this.imageUrls});

  @override
  _CarouselWithControlsState createState() => _CarouselWithControlsState();
}

class _CarouselWithControlsState extends State<CarouselWithControls> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
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
          items: widget.imageUrls.map((imageUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Image.network(
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
          children: widget.imageUrls.map((imageUrl) {
            int index = widget.imageUrls.indexOf(imageUrl);
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

