import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class onboardingWidget extends StatelessWidget {
  const onboardingWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.onTab,
      required this.bottonTitle});

  final String image;
  final String title;
  final String bottonTitle;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(top: 0.8),
        child: Opacity(
          opacity: 0.7,
          child: Image.asset(
            image,
            width: 564,
            height: 760,
            alignment: Alignment.topCenter,
          ),
        ),
      ),
      Positioned(
        left: 0,
        right: 0,
        bottom: 0,
        child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontFamily: "InriaSerif-BoldItalic",
                    shadows: [
                      Shadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(0, 4))
                    ]),
              ),
            ),
            height: MediaQuery.of(context).size.height / 2.60,
            width: 700,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(179, 219, 204, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(120),
                    topRight: Radius.circular(120)))),
      ),
      Positioned(
          left: 290,
          right: 0,
          bottom: 10,
          child: TextButton(
              onPressed: () {},
              child: Text(
                bottonTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ))),
    ]);
  }
}
