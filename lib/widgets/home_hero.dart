import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeHero extends StatelessWidget {
  const HomeHero({super.key});

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 1),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromRGBO(201, 201, 201, 1).withOpacity(0.3),
                  offset: const Offset(1, 3),
                  blurRadius: 16,
                  spreadRadius: 8,
                )
              ],
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.elliptical(200, 100),
                  bottomRight: Radius.elliptical(200, 100))),
          width: double.infinity,
          height: 375,
          margin: const EdgeInsets.only(bottom: 20),
        ),
        Container(
            transform: Matrix4.translationValues(0, -30, 0),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
            width: double.infinity,
            height: 181),
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
        const Positioned(
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
            child: FutureBuilder<DocumentSnapshot>(
                future: users.doc("FYSPFv2GZfcoFGXGyueY").get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
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
                          width: 50,
                          height: 122,
                          transform: Matrix4.translationValues(22, 0, 0),
                          child: Column(children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: '${data['steps']}',
                                      style: const TextStyle(
                                          fontSize: 80,
                                          fontWeight: FontWeight.w900)),
                                  const TextSpan(
                                      text: ' steps',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 150, 150, 150))),
                                ],
                              ),
                            ),
                            Container(
                                transform: Matrix4.translationValues(-21, 0, 0),
                                width: 140,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: '${data['distance']}',
                                              style: const TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold)),
                                          const TextSpan(
                                              text: ' km',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromARGB(
                                                      255, 150, 150, 150))),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: '${data['cals']}',
                                              style: const TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold)),
                                          const TextSpan(
                                              text: ' Cal',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromARGB(
                                                      255, 150, 150, 150))),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ]));
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
                }))
      ],
    );
  }
}
