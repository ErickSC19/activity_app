import 'dart:ffi';

import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, bottom: 20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Chose type of activity',
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 150, 150, 150)),
            ),
          ),
          Container(
            width: double.infinity,
            height: 141,
            child: Row(
              children: [
                ActivityCard(
                  activity: "Outdoor Running",
                ),
                ActivityCard(
                  activity: "Treadmill",
                ),
                ActivityCard(
                  activity: "Outdoor Cycling",
                ),
                ActivityCard(
                  activity: "Walking",
                  selected: true,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard(
      {required this.activity, this.selected = false, super.key});

  final String activity;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(
        top: 16,
        right: 10,
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.directions_walk_outlined,
              color: selected
                  ? Color.fromARGB(255, 255, 255, 255)
                  : const Color.fromARGB(255, 0, 0, 0),
              size: 50,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              activity,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: selected
                    ? Color.fromARGB(255, 255, 255, 255)
                    : Color.fromARGB(255, 0, 0, 0),
              ),
            )
          ],
        ),
        color: selected
            ? const Color.fromRGBO(253, 148, 20, 1)
            : const Color.fromARGB(0, 0, 0, 0),
      ),
    );
  }
}
