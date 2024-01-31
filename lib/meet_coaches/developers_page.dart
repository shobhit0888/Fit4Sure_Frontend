import 'package:fit4sure/meet_coaches/trainers_avatar_widget.dart';
import 'package:flutter/material.dart';

class DevelopersPage extends StatefulWidget {
  const DevelopersPage({super.key});

  @override
  State<DevelopersPage> createState() => _DevelopersPageState();
}

class _DevelopersPageState extends State<DevelopersPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // use trainer avatar widget
        SizedBox(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TrainerAvatarWidget(),
            TrainerAvatarWidget(),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TrainerAvatarWidget(),
            TrainerAvatarWidget(),
          ],
        ),
        SizedBox(
          height: 20,
        ),
       
      ],
    );
  }
}