import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveUtils {
  static StateMachineController getRiveController(Artboard artboard,
      {stateMachineName="State Machine 1"}) {
    StateMachineController? _controller =
        StateMachineController.fromArtboard(artboard, stateMachineName);
    artboard.addController(_controller!);
    return _controller;
  }
}
