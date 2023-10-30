import 'package:activity_app/widgets/friends_slideshow.dart';
import 'package:activity_app/widgets/social_hero.dart';
import 'package:activity_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SocialHero(),
          FriendsSlideShow(),
          DailyGoals()
        ],
      ),
    );
  }
}