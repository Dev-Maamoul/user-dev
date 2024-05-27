import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class onboardingWidget extends StatelessWidget {
  const onboardingWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.onTab});

  final String image;
  final String title;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          image,
          width: 564,
          height: 746,
          alignment: Alignment.topCenter,
        ),
        Positioned(
          child: Container(
            child: Text(title),
            color: Color.fromRGBO(179, 219, 204, 1),
            height: MediaQuery.of(context).size.height / 2.30,
            width: 553,
          ),
        )
      ]),
    );
  }
}
