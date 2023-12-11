// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:beautiful_diary_app/app/config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
              /// Provide NotchBottomBarController
              notchBottomBarController: _controller,
              color: AppColors.white.withOpacity(0.1),
              showLabel: true,
              notchColor: AppColors.dark,
              showShadow: false,

              /// restart app if you change removeMargins
              removeMargins: true,
              bottomBarWidth: 500,
              durationInMilliSeconds: 400,
              bottomBarItems: [
                BottomBarItem(
                  inActiveItem: Lottie.asset(
                    'assets/lottie/man.json',
                    repeat: false,
                    width: 120,
                    height: 120,
                  ),
                  activeItem: Lottie.asset(
                    'assets/lottie/man.json',
                    width: 120,
                    height: 120,
                  ),
                  itemLabel: 'Daily',
                ),
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.star,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.star,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Page 2',
                ),
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.settings,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.settings,
                    color: Colors.pink,
                  ),
                  itemLabel: 'Page 3',
                ),
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.person,
                    color: Colors.yellow,
                  ),
                  itemLabel: 'Page 4',
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
                    ? 'assets/gif/closed_store.gif'
                    : 'assets/gif/closed_store_cut_1.gif',
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
                    ? 'assets/gif/closed_store.gif'
                    : 'assets/gif/closed_store_cut_2.gif',
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
                    ? 'assets/gif/closed_store.gif'
                    : 'assets/gif/closed_store_cut_3.gif',
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
                    ? 'assets/gif/closed_store.gif'
                    : 'assets/gif/closed_store_cut_4.gif',
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
