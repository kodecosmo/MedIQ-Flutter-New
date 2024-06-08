import 'dart:async';

import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:mediq_flutter/screen/loading_connect.dart';

class Sos extends StatefulWidget {
  const Sos({Key? key}) : super(key: key);

  @override
  State<Sos> createState() => _SosState();
}

class _SosState extends State<Sos> {
  double _glowSize = 0.0; // Initial size of the glow
  bool _isCounting = false; // Flag to track if countdown is active
  int _countDown = 3; // Initial countdown value
  Timer? _timer; // Timer object to handle countdown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(kToolbarHeight + 20), // Height of AppBar + padding
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 20.0),
          child: AppBar(
            leading: const Icon(
              Icons.sort_rounded,
              size: 30,
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0.0, // Add padding above title
            title: const Text(
              "MedIQ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 240, 127, 127),
                  ),
                  child: IconButton(
                    onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Sos()),
                  );},
                    icon: Icon(Icons.emergency_sharp),
                    iconSize: 20.0,
                    color: Colors.white,
                  ),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          const Positioned(
            top: 100.0, // Adjust the top position as needed
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Press and hold SOS button below,\nhelp will reach you soon',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 70, 70, 70),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          Center(
            child: AvatarGlow(
              animate: true,
              glowColor: const Color.fromARGB(255, 224, 120, 134),
              duration: const Duration(milliseconds: 2000),
              repeat: true,
              child: CircleAvatar(
                radius: 150, // Adjust the radius as needed
                backgroundColor: Colors
                    .red.shade100, // Set background color for the avatar glow
                child: CircleAvatar(
                  radius: 100, // Adjust the radius as needed
                  backgroundColor: Colors.red
                      .shade300, // Set background color for the circle avatar
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width:
                  200, // Increased width to cover a larger portion of the screen
              height:
                  200, // Increased height to cover a larger portion of the screen
              child: Material(
                // Using Material widget to provide the ink splash effect
                shape: const CircleBorder(), // Set shape to circle
                color: Colors.transparent, // Set button color to transparent
                child: InkWell(
                  // Using InkWell for ink splash effect
                  borderRadius: BorderRadius.circular(
                      100), // Set border radius to half the width/height for a circular shape
                  onTapDown: (_) {
                    // Start the countdown when the button is pressed
                    setState(() {
                      _isCounting = true;
                    });
                    startCountdown();
                  },
                  onTapUp: (_) {
                    // Reset the countdown when the button is released
                    setState(() {
                      _isCounting = false;
                      _countDown = 3; // Reset the countdown value
                      _timer
                          ?.cancel(); // Cancel the countdown timer if it's active
                    });
                  },
                  child: Center(
                    child: _isCounting
                        ? Text(
                            _countDown.toString(),
                            style: const TextStyle(
                              fontSize: 44,
                              color: Colors.white, // Set text color to white
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                            ),
                          )
                        : const Text(
                            'SOS',
                            style: TextStyle(
                              fontSize: 44,
                              color: Colors.white, // Set text color to white
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Method to start the countdown
  void startCountdown() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      if (_countDown == 0) {
        // When countdown reaches 0, navigate to the new page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WaitingPage()),
        );
        timer.cancel(); // Stop the countdown timer
      } else {
        setState(() {
          // Decrement the countdown value
          _countDown--;
        });
      }
    });
  }
}
