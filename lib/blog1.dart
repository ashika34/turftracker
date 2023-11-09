import 'package:flutter/material.dart';

class BlogOne extends StatefulWidget {
  const BlogOne({Key? key});

  @override
  State<BlogOne> createState() => _BlogOneState();
}

class _BlogOneState extends State<BlogOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Blog',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Artificial Turf Landscaping Pros and Ideas for Summer Parties',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Pros of Artificial Turf Landscaping:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '- Low Maintenance: Artificial turf requires minimal maintenance. It doesn\'t need watering, mowing, or fertilizing, making it a practical choice for busy homeowners.',
            ),
            Text(
              '- Durability: Artificial turf is designed to withstand heavy foot traffic and various weather conditions. It won\'t get muddy or develop bare patches, providing a consistent and green surface year-round.',
            ),
            Text(
              '- Cleanliness: Artificial turf doesn\'t harbor pests like natural grass does. It also doesn\'t produce pollen, making it an excellent choice for allergy sufferers.',
            ),
            Text(
              '- Water Conservation: By opting for artificial turf, you contribute to water conservation efforts since it doesn\'t require regular watering.',
            ),
            SizedBox(height: 16),
            Image.asset('assets/images/stock.png',),
            Text(
              'Ideas for Summer Parties Using Artificial Turf:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '- Outdoor Lounge Area: Create a comfortable outdoor lounge area on your artificial turf. Place outdoor furniture, such as sofas, chairs, and tables, for guests to relax and socialize. You can even add outdoor rugs and cushions for extra comfort.',
            ),
            Text(
              '- Games and Activities: Use the even surface of artificial turf for various outdoor games and activities. Set up a mini-golf course, play cornhole, or have a friendly soccer match. The turf provides a safe and enjoyable surface for these activities.',
            ),
            Text(
              '- Picnic Spot: Spread out picnic blankets and create a cozy picnic spot on your artificial turf. Serve refreshing drinks and summer snacks for your guests to enjoy.',
            ),
            Text(
              '- Outdoor Movie Night: Set up a projector and screen on a clear section of your exterior wall or use a portable screen. Place bean bags or comfortable seating on the artificial turf and host an outdoor movie night under the stars.',
            ),
            Text(
              '- Poolside Oasis: If you have a pool, use artificial turf to create a poolside oasis. Place lounge chairs, umbrellas, and side tables on the turf for a relaxing atmosphere. Artificial turf doesn\'t get slippery when wet, ensuring safety around the pool area.',
            ),
            Text(
              '- Themed Parties: Customize your artificial turf area according to the theme of your summer party. For example, for a tropical luau party, decorate the area with tiki torches, leis, and vibrant colors. The artificial turf provides a lush green backdrop for your theme.',
            ),
            Text(
              '- Outdoor Barbecue: Host a barbecue party on your artificial turf. Set up a grill, dining tables, and chairs. You can also create a DIY barbecue station with various sauces and condiments for your guests to enjoy.',
            ),
          ],
        ),
      ),
    );
  }
}
