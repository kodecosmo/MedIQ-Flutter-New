import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class Sos extends StatefulWidget {
  const Sos({Key? key}) : super(key: key);

  @override
  State<Sos> createState() => _SosState();
}

class _SosState extends State<Sos> {
  double _glowSize = 0.0; // Initial size of the glow

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
            title: Text(
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
                  onPressed: () {
                    // Add your SOS button logic here
                    print('SOS button pressed from app bar');
                  },
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
          Center(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              width: _glowSize,
              height: _glowSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red.withOpacity(0.5), // Adjust opacity as needed
              ),
            ),
          ),
          Center(
            child: AvatarGlow(
              animate: true,
              glowColor: Color.fromARGB(255, 224, 120, 134),
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
                shape: CircleBorder(), // Set shape to circle
                color: Colors.transparent, // Set button color to transparent
                child: InkWell(
                  // Using InkWell for ink splash effect
                  borderRadius: BorderRadius.circular(
                      100), // Set border radius to half the width/height for a circular shape
                  onTap: () {
                    setState(() {
                      // Increase the size of the glow when tapped
                      _glowSize = 300.0; // Adjust the size as needed
                    });
                    // Add your SOS button logic here
                    print('SOS button pressed');
                  },
                  child: Center(
                    child: Text(
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
}
