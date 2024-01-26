import 'package:fit4sure/clientDashboard/plans_card.dart';
import 'package:flutter/material.dart';

class ActivePlans extends StatefulWidget {
  const ActivePlans({super.key});

  @override
  State<ActivePlans> createState() => _ActivePlansState();
}

class _ActivePlansState extends State<ActivePlans> {
  @override
  Widget build(BuildContext context) {
    return PlansCard();
  }
}