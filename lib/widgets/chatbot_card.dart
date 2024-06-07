import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ChatbotCard extends StatelessWidget {
  const ChatbotCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Color.fromRGBO(245, 250, 255, 1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.red.shade400),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Emergency",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.red.shade400,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Describe your emergency and\n get assistance from our all\n new MedIQ bot.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  // Navigate to chat screen on tap
                  onPressed: () {
                    Navigator.pushNamed(context, '/chatbot');
                  },
                  child: Text(
                    "Chat now",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                height: 150,
                width: 150,
                // Replace the Icon with Lottie.asset widget
                child: Lottie.network(
                  'https://lottie.host/fff678c8-0c98-4018-8db5-93862a21b448/4Ig8JcCQ1m.json', // Replace 'assets/animation.json' with the path to your Lottie animation file
                  width: 50,
                  height: 50,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
