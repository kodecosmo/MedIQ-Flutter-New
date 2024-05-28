import 'package:flutter/material.dart';
import 'package:mediq_flutter/screen/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key); // Corrected constructor

  @override
  State<SplashScreen> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();


    _navigateToLoginPage();

  }

  _navigateToLoginPage() async {
    await Future.delayed(const Duration(seconds: 2), () {});
  Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => LoginPage()),
);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MedIQ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 10), // Adding some space between the texts
            Text(
              'Your AI Assistant In Any Medical Emergency',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
