import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

import 'notch_bottom_wrapper.dart';

class Ferris extends StatelessWidget {
  const Ferris({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: const AnimatedNotchBottomBarWrapper(),
                  ),
                );
              },
              child: const Text('Xem Chi Tiết'),
            ),
          ],
        ),
      ),
    );
  }
}
