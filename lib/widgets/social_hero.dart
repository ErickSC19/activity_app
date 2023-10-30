import 'package:activity_app/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialHero extends StatelessWidget {
  const SocialHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(201, 201, 201, 1).withOpacity(0.3),
                  offset: Offset(1, 8),
                  blurRadius: 18,
                  spreadRadius: 10,
                )
              ],
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.elliptical(200, 100),
                  bottomRight: Radius.elliptical(200, 100))),
          width: double.infinity,
          height: 270,
          margin: EdgeInsets.only(bottom: 50),
        ),
        Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
            width: double.infinity,
            height: 70),
        Container(
          transform: Matrix4.translationValues(0, 0, 0),
          decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 1),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.elliptical(200, 100),
                  bottomRight: Radius.elliptical(200, 100))),
          width: double.infinity,
          height: 180,
        ),
        Positioned(
          left: 0.0,
          right: 0.0,
          top: 80,
          child: CircleAvatar(
            backgroundColor: Color(0x000),
            backgroundImage: AssetImage('./assets/profile.png'),
            radius: 75.0,
          ),
        ),
        Positioned(
            left: 0.0,
            right: 0.0,
            child: Container(
                width: 50,
                height: 122,
                transform: Matrix4.translationValues(9, 0, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('  Jhon Ferguson',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w200,
                              color: Color.fromARGB(255, 255, 255, 255))),
                      SizedBox(height: 8),
                      Text('    Baltimore Sprinter',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color.fromARGB(255, 150, 150, 150)))
                    ]))),
        Positioned(left: 20, top: 200, child: StatisticsBubble()),
        Positioned(left: 0, right: 0, top: 230, child: StatisticsBubble()),
        Positioned(right: 20, top: 200, child: StatisticsBubble())
      ],
    );
  }
}
