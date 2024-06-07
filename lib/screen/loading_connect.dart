import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WaitingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onPressed: () {},
                  icon: const Icon(Icons.emergency_sharp),
                  iconSize: 20.0,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Connecting with an EMT, please wait...',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Lottie.network(
                'https://lottie.host/11729b76-b6a9-400d-967d-bf7ba4d9fb9d/ZbLWYFBskO.json',
                width: 200,
                height: 200,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 20),
              Text(
                '3 Ambulances Found Nearby...',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
