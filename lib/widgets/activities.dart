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
            height: 130,
            child: Row(
              children: [
                ActivityCard(),
                ActivityCard(),
                ActivityCard(),
                ActivityCard()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(
        top: 16,
        right: 10,
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 80,
        child: Column(
          children: [
            Icon(
              Icons.directions_walk_outlined,
              color: Color.fromARGB(255, 0, 0, 0),
              size: 50,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Walking")
          ],
        ),
      ),
    );
  }
}
