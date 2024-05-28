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
  final List<Map<String, dynamic>> _pages = [
    {
      'image': 'assets/images/start_img_1.jpg',
      'title': "Shop from multiple stores, anytime, anywhere"
    },
    {
      'image': 'assets/images/start_img_2.jpg',
      'title': "Delight in the authentic taste of local dishes"
    },
    {
      'image': 'assets/images/start_img_3.jpg',
      'title': "Immerse yourself in the beauty of local crafts"
    }
  ];
  void onNextPage() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(children: [
          PageView.builder(
              controller: _pageController,
              itemCount: _pages.length,
              itemBuilder: (BuildContext context, int index) {
                return onboardingWidget(
                    image: _pages[index]['image'],
                    title: _pages[index]['title'],
                    onTab: onNextPage);
              }),
        ]),
      ),
    );
  }
}
