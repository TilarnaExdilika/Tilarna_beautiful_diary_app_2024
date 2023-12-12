// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:beautiful_diary_app/app/config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../common/themes/themes.dart';

class AnimatedNotchBottomBarWrapper extends StatefulWidget {
  const AnimatedNotchBottomBarWrapper({Key? key}) : super(key: key);

  @override
  State<AnimatedNotchBottomBarWrapper> createState() =>
      _AnimatedNotchBottomBarWrapperState();
}

class _AnimatedNotchBottomBarWrapperState
    extends State<AnimatedNotchBottomBarWrapper> {
  final _pageController = PageController(initialPage: 0);

  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// widget list
  final List<Widget> bottomBarPages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              color: MediaQuery.of(context).orientation == Orientation.landscape
                  ? AppColors.dark.withOpacity(0.2)
                  : AppColors.dark.withOpacity(0.4),
              showLabel: true,
              notchColor:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? AppColors.dark.withOpacity(0.6)
                      : AppColors.dark,
              showShadow: false,
              removeMargins: true,
              bottomBarWidth: 500,
              durationInMilliSeconds: 400,
              itemLabelStyle: TextStyle(
                fontFamily: 'Coiny',
                fontSize: 16,
                fontWeight: FontWeight.normal,
                foreground: Paint()
                  ..shader = LinearGradient(
                    colors: [
                      Pokemon.pokemonprimary1,
                      Pokemon.pokemonprimary2,
                    ],
                    stops: [0.0, 1.0],
                  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
              ),
              bottomBarItems: [
                BottomBarItem(
                  inActiveItem: Lottie.asset(
                    'assets/lottie/camera.json',
                    repeat: false,
                  ),
                  activeItem: Lottie.asset(
                    'assets/lottie/camera.json',
                    repeat: false,
                  ),
                  itemLabel: 'Diary',
                ),
                BottomBarItem(
                  inActiveItem: Lottie.asset(
                    'assets/lottie/layers.json',
                    repeat: false,
                  ),
                  activeItem: Lottie.asset(
                    'assets/lottie/layers.json',
                    repeat: false,
                  ),
                  itemLabel: 'Task',
                ),
                BottomBarItem(
                  inActiveItem: Lottie.asset(
                    'assets/lottie/shooting_stars.json',
                    repeat: false,
                  ),
                  activeItem: Lottie.asset(
                    'assets/lottie/shooting_stars.json',
                    repeat: false,
                  ),
                  itemLabel: 'Notify',
                ),
                BottomBarItem(
                  inActiveItem: Lottie.asset(
                    'assets/lottie/confetti.json',
                    repeat: false,
                  ),
                  activeItem: Lottie.asset(
                    'assets/lottie/confetti.json',
                    repeat: false,
                  ),
                  itemLabel: 'Profile',
                ),
              ],
              onTap: (index) {
                if (MediaQuery.of(context).orientation ==
                    Orientation.portrait) {
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                } else {
                  _pageController.jumpToPage(index);
                }
              },
            )
          : null,
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Stack(
            children: [
              Image.asset(
                orientation == Orientation.landscape
                    ? 'assets/gif/pokemon.gif'
                    : 'assets/gif/pokemon_1.gif',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Container(
                child: const Center(child: Text('Page 1')),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Stack(
            children: [
              Image.asset(
                orientation == Orientation.landscape
                    ? 'assets/gif/pokemon.gif'
                    : 'assets/gif/pokemon_2.gif',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Container(
                child: const Center(child: Text('Page 1')),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Stack(
            children: [
              Image.asset(
                orientation == Orientation.landscape
                    ? 'assets/gif/pokemon.gif'
                    : 'assets/gif/pokemon_3.gif',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Container(
                child: const Center(child: Text('Page 1')),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Stack(
            children: [
              Image.asset(
                orientation == Orientation.landscape
                    ? 'assets/gif/pokemon.gif'
                    : 'assets/gif/pokemon_4.gif',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Container(
                child: const Center(child: Text('Page 1')),
              ),
            ],
          );
        },
      ),
    );
  }
}
