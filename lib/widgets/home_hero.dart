import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeHero extends StatelessWidget {
  const HomeHero({super.key});

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
          height: 375,
          margin: EdgeInsets.only(bottom: 20),
        ),
        Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
            width: double.infinity,
            height: 151),
        Container(
          transform: Matrix4.translationValues(0, 150, 0),
          decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 1),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200))),
          width: double.infinity,
          height: 200,
        ),
        Positioned(
          left: 0.0,
          right: 0.0,
          top: -46,
          child: CircleAvatar(
              backgroundColor: Color(0x000),
              backgroundImage: AssetImage('./assets/background.png'),
              radius: 200.0),
        ),
        Positioned(
            left: 0.0,
            right: 0.0,
            top: 80,
            child: Container(
                width: 50,
                height: 122,
                transform: Matrix4.translationValues(22, 0, 0),
                child: Column(children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: '7235',
                            style: TextStyle(
                                fontSize: 80, fontWeight: FontWeight.w900)),
                        TextSpan(
                            text: ' steps', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  Container(
                      transform: Matrix4.translationValues(-21, 0, 0),
                      width: 123,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: '2.3',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: ' km',
                                    style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: '87',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: ' Cal',
                                    style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ),
                        ],
                      )),
                ])))
      ],
    );
  }
}
