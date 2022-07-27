import 'package:flutter/material.dart';
import 'package:profilepage/PersonInfo.dart';
import 'package:profilepage/trial.dart';

void main() => runApp(ProfilePage());

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PersonInfo(),
      // home: OnboardingScreen(),
    );
  }
}
