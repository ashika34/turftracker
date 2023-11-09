import 'package:flutter/material.dart';

class BlogTwo extends StatefulWidget {
  const BlogTwo({Key? key}) : super(key: key);

  @override
  State<BlogTwo> createState() => _BlogTwoState();
}

class _BlogTwoState extends State<BlogTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Blog'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '10 Benefits of playing football',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(height: 16),
               Image.asset('assets/images/benefitsfootball.png'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cardiovascular Health: Football involves a lot of running, which improves cardiovascular health, strengthens the heart, and enhances overall endurance.\n\n'
                      'Physical Fitness: Football helps improve agility, speed, and coordination. Players constantly change direction, sprint, and jump, leading to better fitness levels.\n\n'
                      'Muscle Strength: Football requires the use of various muscle groups, leading to improved muscle strength and endurance, especially in the legs.\n\n'
                      'Bone Strength: Running, jumping, and kicking a ball helps in building bone density, reducing the risk of osteoporosis later in life.\n\n'
                      'Weight Management: Regular football practice burns calories and helps in maintaining a healthy body weight, reducing the risk of obesity and related health issues.\n\n'
                      'Social Interaction: Football is a team sport that encourages social interaction, teamwork, and camaraderie. Players learn to work together, communicate effectively, and develop friendships.\n\n'
                      'Mental Agility: Football involves quick decision-making, strategizing, and anticipating opponents\' moves. This enhances cognitive abilities and mental agility.\n\n'
                      'Discipline: Being part of a football team requires discipline, punctuality, and dedication to regular practice sessions and matches, teaching players important life skills.\n\n'
                      'Stress Relief: Engaging in physical activities like football releases endorphins, reducing stress and promoting a sense of well-being.\n\n'
                      'Confidence and Self-Esteem: Mastering skills, contributing to the team\'s success, and receiving positive reinforcement from coaches and teammates boost confidence and self-esteem.\n\n'
                      'When we play football, we burn calories, therefore, it can be a good way to improve our body composition i.e. lose body fat if we need to.\n\n'
                      'As mentioned before, when playing football, we utilize energy aerobically, using fat as our main energy substrate, and anaerobically, using carbohydrates stored in the muscle as glycogen as our main energy substrate. While a professional footballer\'s average weight is the same as the average UK male (approximately 83.6kg), their body fat percentage is significantly lower. A Premier League footballer typically has a body fat percentage of approximately 10% - by contrast, the \'acceptable\' range for an average male is 18 - 24%, and a \'fit\' male should have a body fat percentage of 14 - 17%.',
                      textAlign: TextAlign.justify,
                    ),
                 
                   
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
