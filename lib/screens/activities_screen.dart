import 'package:activity_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ActivitiesHero(),
          Activities(),
          PlayButton()
        ],
      ),
    );
  }
}