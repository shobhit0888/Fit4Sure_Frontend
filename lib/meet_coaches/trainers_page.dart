import 'package:fit4sure/meet_coaches/trainers_avatar_widget.dart';
import 'package:flutter/material.dart';

class TrainnersPage extends StatefulWidget {
  const TrainnersPage({super.key});

  @override
  State<TrainnersPage> createState() => _TrainnersPageState();
}

class _TrainnersPageState extends State<TrainnersPage> {
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TrainerAvatarWidget(),
            TrainerAvatarWidget(),
          ],
        ),
      ],
    );
  }
}
