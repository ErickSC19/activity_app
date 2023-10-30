import 'package:activity_app/ui/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastActivity extends StatelessWidget {
  const LastActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Last activity",
              style: TextStyle(color: Color.fromARGB(255, 150, 150, 150)),
            ),
            Text("See details >",
                style: TextStyle(
                    color: Color.fromRGBO(253, 148, 20, 1),
                    fontWeight: FontWeight.bold))
          ]),
          LastActivityCard()
        ],
      ),
    );
  }
}

class LastActivityCard extends StatelessWidget {
  const LastActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColorCircle(),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: '3.2',
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0))),
                        TextSpan(
                            text: '  km',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 150, 150, 150))),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: '4199',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0))),
                        TextSpan(
                            text: '  steps',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 150, 150, 150))),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: '19',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0))),
                        TextSpan(
                            text: '  min',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 150, 150, 150))),
                        TextSpan(
                            text: '  32',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0))),
                        TextSpan(
                            text: '  sec',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 150, 150, 150))),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text('26226*',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0)))
                ],
              ))
            ],
          )),
    );
  }
}
