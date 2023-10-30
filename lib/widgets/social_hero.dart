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
                  offset: Offset(1, 3),
                  blurRadius: 16,
                  spreadRadius: 8,
                )
              ],
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.elliptical(200, 100),
                  bottomRight: Radius.elliptical(200, 100))),
          width: double.infinity,
          height: 270,
          margin: EdgeInsets.only(bottom: 20),
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
              borderRadius:const BorderRadius.only(
                  bottomLeft: Radius.elliptical(200, 100),
                  bottomRight: Radius.elliptical(200, 100))),
          width: double.infinity,
          height: 180,
        ),
        Positioned(
            left: 0.0,
            right: 0.0,
            top: 80,
            child: Container(
                width: 50,
                height: 122,
                transform: Matrix4.translationValues(9, 0, 0),
                child: Column(children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'u',
                            style: TextStyle(
                                fontSize: 100, fontWeight: FontWeight.w900)),
                        TextSpan(
                            text: ' km',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 150, 150, 150))),
                      ],
                    ),
                  )
                ])))
      ],
    );
  }
}
