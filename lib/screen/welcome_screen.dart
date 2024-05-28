import 'package:flutter/material.dart';
import 'package:mediq_flutter/widgets/navbar.dart';
import 'package:mediq_flutter/widgets/custome_scafold.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyNavigationBar();
    return CustomScaffold();
  }
}
