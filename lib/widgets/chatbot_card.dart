import 'package:flutter/material.dart';

class ChatbotCard extends StatelessWidget {
  const ChatbotCard({super.key});

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
                    "Describe your emergency and\n get assistant from our all\n new MedIQ bot.",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  // should add a Chat now button here
                  ElevatedButton(
                    // navige to chat screen on tap
                    onPressed: () {
                      Navigator.pushNamed(context, '/chat_screen');
                    },
                    child: const Text(
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
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.red.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.chat,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}