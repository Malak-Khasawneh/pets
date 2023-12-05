import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pets/models/Home%20Page.dart';

import 'Button.dart';
import 'NavBar.dart';

class End extends StatefulWidget {
  const End({super.key});

  @override
  State<End> createState() => _EndState();
}

class _EndState extends State<End> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      // Provide a default duration if the animation doesn't provide one
      duration: const Duration(seconds: 2),
    );

    // Start the animation when the widget is initialized
    _controller.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            "assets/animation/congrats.json",
            controller: _controller,
            onLoaded: (composition) {
              _controller.duration = composition.duration;
            },
          ),
          Text('Your Order is being Prepared',style: TextStyle(color: Color(0xff8F6FC2),fontSize: 20),),
          SizedBox(height:30),
          ElevatedButton(
            style: buttonPrimary,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  NavBar()));
            },
            child: Text(
              'Home', style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w700),textAlign: TextAlign.center,
            ),
          ),
        ],


      ),
    );
  }
}
