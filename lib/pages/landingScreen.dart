import 'package:flutter/material.dart';

import 'Home.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Container(
            height: size.height / 1.8,
            padding: const EdgeInsets.symmetric(
              horizontal: 16
            ),
            child: Image.asset('assets/start.jpg'),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text('All Specialists in one app',
             style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
             ),
             ),
             const SizedBox(
              height: 8,
             ),
             const Padding(padding: EdgeInsets.only(
              right: 100
             ),
             child: Text('Find Your doctor and make an appointment with one tap',
             style: TextStyle(
              color: Colors.black38,
              fontSize: 15
             ),),
             ),
             const SizedBox(
              height: 56,
             ),
             InkWell(
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return const Home();
              })),
               child: Container(
                height: 56,
                decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(16)),
                child: const Center(
                  child: Text('Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
                ),
               ),
             )

            ],
          ),)
        ],
      )),
    );
  }
}
