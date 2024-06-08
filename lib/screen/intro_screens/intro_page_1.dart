import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mediq_flutter/screen/intro_screens/intro_page_2.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  State<IntroPage1> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage1> with TickerProviderStateMixin {
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
              'https://lottie.host/4b5d5f38-2539-4caa-abba-5ac8058ed235/KwnRcbRr6k.json',
              controller: _controller,
              height: 500,
            ),
            const SizedBox(
                height: 10.0),
            // Add spacing between animation and text
            Text(
              'Welcome to MediQ',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                'Your trusted companion for emergencies,\n delivering expert guidance instantly.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[600],
                ),
              ),
            ),
            SizedBox(height: 50.0),
            ElevatedButton(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 17, 42, 70)),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 138.0),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ), onPressed: () { 
                      Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  IntroPage2()),
              ); 
              },)
            
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
