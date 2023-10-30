import 'package:flutter/material.dart';
import 'package:activity_app/ui/ui.dart';

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
            children: [FriendCard(), FriendCard(), FriendCard(), FriendCard(), FriendCard()],
          ),
        )
      ],
    );
  }
}

class FriendCard extends StatelessWidget {
  const FriendCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: 75,
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          CircleAvatar(
            backgroundColor: Color(0x000),
            backgroundImage: AssetImage('./assets/profile.png'),
            radius: 30.0,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Andrew",
          )
        ],
      ),
    );
  }
}
