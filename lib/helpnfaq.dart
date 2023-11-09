import 'package:flutter/material.dart';

class HelpFaq extends StatefulWidget {
  const HelpFaq({Key? key});

  @override
  State<HelpFaq> createState() => _HelpFaqState();
}

class _HelpFaqState extends State<HelpFaq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help and FAQs'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              color: Color.fromARGB(255, 245, 203, 170),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'How Can We Help?',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Find advice and answers from our support team fast',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(13),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Turftracker',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    ExpansionTile(
                      iconColor: Colors.black, 
                      title: Text('1. What is Turftracker?', style: TextStyle(fontWeight: FontWeight.bold)),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Turftracker is a sports booking platform for turf, sports venues, coaches, cricket, and football.',
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      iconColor: Colors.black,
                      title: Text('2. Where is the Turftracker office located?', style: TextStyle(fontWeight: FontWeight.bold)),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'The office is located on the 2nd floor, Khil House, Nehru Road, Vile Parle East, Mumbai, Maharashtra 400099.',
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      iconColor: Colors.black,
                      title: Text('3. What is Turftracker for?', style: TextStyle(fontWeight: FontWeight.bold)),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Turftracker is a discovery and booking platform for all sports enthusiasts. You can book sports venues such as football turfs, badminton courts, find coaching academies, or book certified coaches for personalized coaching.',
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      iconColor: Colors.black,
                      title: Text('4. How many sports are listed with Turftracker?', style: TextStyle(fontWeight: FontWeight.bold)),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Turftracker lists various sports like cricket and football, catering to a wide range of sports enthusiasts.',
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      iconColor: Colors.black,
                      title: Text('5. How do I book a turf or a coach?', style: TextStyle(fontWeight: FontWeight.bold)),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'To book a venue, use the search option, select your desired venue, choose a date and time, and proceed to payment. For coaching, explore certified coaches and book a session according to your preference.',
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      iconColor: Colors.black,
                      title: Text('6. Can I book on behalf of my team?', style: TextStyle(fontWeight: FontWeight.bold)),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Yes, you can book on behalf of your team. Select the venue, choose the date and time, and make the payment to confirm your booking.',
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      iconColor: Colors.black,
                      title: Text('7. Can I shift my booking to another venue after payment?', style: TextStyle(fontWeight: FontWeight.bold)),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'No, once the payment is made, bookings cannot be shifted to another venue. Please ensure to choose the right venue before confirming your booking.',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

