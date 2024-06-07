import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  State<IntroPage3> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage3> with TickerProviderStateMixin {
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
              'https://lottie.host/6cb7215d-86c6-4864-ba68-e60b87155a92/SPUEfgrcYj.json',
              controller: _controller,
              height: 600,
            ),
            const SizedBox(
                height: 10.0), // Add spacing between animation and text
            Text(
              textAlign: TextAlign.center,
              'Empowering Communities,\n Saving Lives',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                'Join us in enhancing community safety\n and resilience with MedIQ.',
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
