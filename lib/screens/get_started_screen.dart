import 'package:exploreease/login_screens/login_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/intro.png'),
          SizedBox(height: 20,),
          Text("Let's Enjoy The", style: TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),),
          Text("Beutiful World",style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Text("Explore new places in the world", style: TextStyle(fontSize: 16,color: Colors.black),),
          Text("and get new Experiences", style: TextStyle(fontSize: 16,color: Colors.black),),
          Spacer(),
           Align(
            alignment: Alignment.bottomCenter,
             child: Padding(
               padding: const EdgeInsets.symmetric(vertical: 35.0,horizontal: 20),
               child: Container(
                width: double.infinity,
                height: 50,
                 child: ElevatedButton(
                   onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                   },
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.orange,
                     foregroundColor: Colors.white,
                   ),
                   child: Text("Get Started"),
                 ),
               ),
             ),
           ),
        ],
        
      ),
    );
  }
}