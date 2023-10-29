import 'package:activity_app/widgets/last_activity.dart';
import 'package:activity_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Top section
          HomeHero(),

          // Bottom section
          DailyGoals(),
          LastActivity()

        ],
      ),
    );
  }
}
