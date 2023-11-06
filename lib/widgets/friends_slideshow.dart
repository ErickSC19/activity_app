import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FriendsSlideShow extends StatelessWidget {
  const FriendsSlideShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
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
          height: 130,
          padding: EdgeInsets.only(left: 20),
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              FriendCard(uid: "1KiqQ1RsyWO5TtHDMmed"),
              FriendCard(uid: "35ZY4tHtujMSwXu1747z"),
              FriendCard(uid: "IwAHexXWCuvij4o5594b"),
              FriendCard(uid: "x8xatEcYvPGDTx2G8crQ"),
              FriendCard(uid: "bn0K4UGRPvqq6Hr3052d")
            ],
          ),
        )
      ],
    );
  }
}

//const db = getFirestore(app);

class FriendCard extends StatelessWidget {
  const FriendCard({this.uid = "1KiqQ1RsyWO5TtHDMmed", super.key});

  final String uid;

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    return FutureBuilder<DocumentSnapshot>(
        future: users.doc(uid).get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            //error
            if (snapshot.hasError) {
              return const Text("Something went wrong");
            }
            //empty
            if (snapshot.hasData && !snapshot.data!.exists) {
              return const Text("Document does not exist");
            }
            //success
            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> data =
                  snapshot.data!.data() as Map<String, dynamic>;
              return Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: 75,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0x000),
                      backgroundImage: NetworkImage(data['profile_img']),
                      radius: 30.0,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      data['username'],
                    )
                  ],
                ),
              );
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
