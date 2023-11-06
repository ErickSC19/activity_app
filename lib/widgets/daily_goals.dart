import 'package:flutter/material.dart';
import 'package:activity_app/ui/ui.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
            children: [GoalCard(gid: "NN30vCLduNWZjTbexG8G",), GoalCard(gid: "2Id9o42Bi3mKM7BBKk6E",), GoalCard(gid: "Il1iJjvWnnmceEArMl5k",)],
          ),
        )
      ],
    );
  }
}

class GoalCard extends StatelessWidget {
  const GoalCard({this.gid = "NN30vCLduNWZjTbexG8G", super.key});

  final String gid;

  @override
  Widget build(BuildContext context) {
    CollectionReference goals = FirebaseFirestore.instance.collection('goals');
    return FutureBuilder<DocumentSnapshot>(
        future: goals.doc(gid).get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            //error
            if (snapshot.hasError) {
              return Text("Something went wrong");
            }
            //empty
            if (snapshot.hasData && !snapshot.data!.exists) {
              return Text("Document does not exist");
            }
            //success
            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> data =
                  snapshot.data!.data() as Map<String, dynamic>;
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
                                  text: "${data['count']}",
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 0, 0, 0))),
                              TextSpan(
                                  text: '  ${data['denomination']}',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color:
                                          Color.fromARGB(255, 150, 150, 150))),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          data['goal_name'],
                          style: TextStyle(
                              color: Color.fromARGB(255, 150, 150, 150)),
                        )
                      ],
                    ),
                  ));
            }

            //loading
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            //loading
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
