import 'package:fit4sure/meet_coaches/trainer_description_dialog_widget.dart';
import 'package:flutter/material.dart';

class TrainerAvatarWidget extends StatefulWidget {
  const TrainerAvatarWidget({super.key});

  @override
  State<TrainerAvatarWidget> createState() => _TrainerAvatarWidgetState();
}

class _TrainerAvatarWidgetState extends State<TrainerAvatarWidget> {
  void _showTrainerDescriptionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return TrainerDescriptionDialog();
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showTrainerDescriptionDialog(context);
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => CoachStartPage(),
        //   ),
        // );
      
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/Banner.png'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Shobhit Gupta',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Yoga Coach',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
