import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3), // Set total animation duration
    );

    // Play the first 0.5 seconds and then loop from there
    _controller.forward(from: 0.16); // Start from 0.16 to avoid initial frame
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.repeat(min: 0.5, max: 1.0); // Loop from 0.5 to 1.0
      }
    });
  }

  @override // This annotation is now within the method declaration
  Widget build(BuildContext context) {
    return Scaffold(
      // Use Scaffold for top padding
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start, // Center remaining content
          children: [
            Lottie.network(
              'https://lottie.host/051f28ac-60d2-432f-976d-cb2c17ad2b62/qtu8wnCVeI.json',
              controller: _controller,
              height: 600,
            ),
            const SizedBox(
                height: 10.0), // Add spacing between animation and text
            Text(
              'Your Lifesaving Assistant',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                'Experience the future of first aid with\n AI-powered support',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[600],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
