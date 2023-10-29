import 'package:flutter/material.dart';
import 'package:activity_app/ui/ui.dart';

class DailyGoals extends StatelessWidget {
  const DailyGoals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Daily goals",
                    style: TextStyle(color: Color.fromARGB(255, 150, 150, 150)),
                  ),
                  Text("Open list >",
                      style: TextStyle(
                          color: Color.fromRGBO(253, 148, 20, 1),
                          fontWeight: FontWeight.bold))
                ])),
        Container(
          height: 131,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [GoalCard(), GoalCard(), GoalCard()],
          ),
        )
      ],
    );
  }
}

class GoalCard extends StatelessWidget {
  const GoalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(left: 16, bottom: 10, top: 16),
        child: Container(
          padding: EdgeInsets.all(12.0),
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColorCircle(),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: '5',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0))),
                    TextSpan(
                        text: '  cups',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 150, 150, 150))),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Drinking Goal",
                style: TextStyle(color: Color.fromARGB(255, 150, 150, 150)),
              )
            ],
          ),
        ));
  }
}
