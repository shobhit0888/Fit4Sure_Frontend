import 'package:flutter/material.dart';

import 'trainers_avatar_widget.dart';

class ManagersPage extends StatefulWidget {
  const ManagersPage({super.key});

  @override
  State<ManagersPage> createState() => _ManagersPageState();
}

class _ManagersPageState extends State<ManagersPage> {
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
          ],
        ),
      ],
    );
  }
}
