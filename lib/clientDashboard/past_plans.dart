import 'package:fit4sure/clientDashboard/plans_card.dart';
import 'package:flutter/material.dart';

class PastPlans extends StatefulWidget {
  const PastPlans({super.key});

  @override
  State<PastPlans> createState() => _PastPlansState();
}

class _PastPlansState extends State<PastPlans> {
  @override
  Widget build(BuildContext context) {
    return PlansCard();
  }
}
