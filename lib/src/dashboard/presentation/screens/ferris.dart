import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Ferris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Lottie.asset(
            'assets/lottie/ferris.json',
            width: 180,
            height: 180,
            fit: BoxFit.cover,
            animate: true,
            reverse: true,
            repeat: true,
            onLoaded: (composition) {},
          ),
        ),
      ),
    );
  }
}
