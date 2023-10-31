import 'package:flutter/material.dart';
import 'package:turftracker/signuppage.dart';


class SpalshScreen extends StatefulWidget {
  const SpalshScreen({Key? key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToSignUpPage();
  }

  Future<void> _navigateToSignUpPage() async {
    await Future.delayed(Duration(seconds: 3)); 
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) =>SignUp()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.lightGreen, Colors.green],
          ),
        ),
        child: Center(
          child: Text(
            'TurfTracker',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}


