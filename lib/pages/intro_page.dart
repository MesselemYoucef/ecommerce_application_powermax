import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            //logo
            Image.asset("lib/images/logo.png", height: 240,),
            //title
        
            //subtitle
        
            //start now button
          ],
        ),
      ),
    );
  }
}