import 'package:ecommerce_application_powermax/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Image.asset("lib/images/logo.png", height: 240,),
              const SizedBox(height: 48,),
              //title
              const Text("Just Do It!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
          const SizedBox(height: 48,),
              //subtitle
             const Text("Brand New Sneakers and Custom Kicks Made With Premium Materials", style: TextStyle( fontSize: 16.0, color: Colors.grey,),textAlign: TextAlign.center,),
             const SizedBox(height: 48,),
             GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
               child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12)
                ),
                padding: const EdgeInsets.all(25.0),
                child: const Center(child: Text("Shop Now!", 
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0),)),
               ),
             )
              //start now button
            ],
          ),
        ),
      ),
    );
  }
}