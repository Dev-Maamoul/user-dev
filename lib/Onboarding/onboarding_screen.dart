import 'package:customer_section/Onboarding/widgets/onboarding_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  int _activePage = 0;
  final List<Map<String, dynamic>> _pages = [
    {
      'image': 'assets/images/start_img_1.jpg',
      'title': "Shop from multiple stores, anytime, anywhere",
      'bottonTitle': "Skip"
    },
    {
      'image': 'assets/images/start_img_2.jpg',
      'title': "Delight in the authentic taste of local dishes",
      'bottonTitle': "Skip"
    },
    {
      'image': 'assets/images/start_img_3.jpg',
      'title': "Immerse yourself in the beauty of local crafts",
      'bottonTitle': "Done"
    }
  ];
  void onNextPage() {
    if (_activePage < _pages.length - 1) {
      _pageController.nextPage(
          duration: Duration(milliseconds: 500), curve: Curves.linear);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          PageView.builder(
              controller: _pageController,
              itemCount: _pages.length,
              onPageChanged: (int page) {
                setState(() {
                  _activePage = page;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return onboardingWidget(
                  image: _pages[index]['image'],
                  title: _pages[index]['title'],
                  bottonTitle: _pages[index]['bottonTitle'],
                  onTab: onNextPage,
                );
              }),
          Positioned(
              bottom: 25,
              left: 100,
              right: 100,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildIndicators()))
        ]),
      ),
    );
  }

  List<Widget> _buildIndicators() {
    final indicator = <Widget>[];

    for (var i = 0; i < _pages.length; i++) {
      if (_activePage == i) {
        indicator.add(_indicatorTrue());
      } else {
        indicator.add(_indicatorFalse());
      }
    }
    return indicator;
  }

  Widget _indicatorTrue() {
    return AnimatedContainer(
      duration: Duration(microseconds: 300),
      height: 15,
      width: 15,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color.fromRGBO(255, 255, 255, 0.69)),
    );
  }

  Widget _indicatorFalse() {
    return AnimatedContainer(
      duration: Duration(microseconds: 300),
      height: 8,
      width: 8,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color.fromRGBO(112, 112, 112, 80)),
    );
  }
}
