import 'package:flutter/material.dart';
import 'dart:math' as math;

// generate a random user id
final String localUserId = math.Random().nextInt(10000).toString();
final callIdTextCtrl = TextEditingController();

class CallingScreen extends StatelessWidget {
  const CallingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}