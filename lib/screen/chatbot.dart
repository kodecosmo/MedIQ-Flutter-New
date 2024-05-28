import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:speech_to_text/speech_to_text.dart';

class ChatbotPage extends StatefulWidget {
  const ChatbotPage({super.key});

  @override
  State<ChatbotPage> createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  SpeechToText speechToText = SpeechToText();
  var text = "Please let me know how I can help you today...";
  var isListening = false;

  @override
  void initState() {
    super.initState();
    initializeSpeechToText();
  }

  void initializeSpeechToText() async {
    var available = await speechToText.initialize(
      onStatus: (status) => print('Status: $status'),
      onError: (errorNotification) => print('Error: $errorNotification'),
    );
    if (available) {
      setState(() {
        text = "Please let me know how I can help you today...";
      });
    } else {
      setState(() {
        text = "Speech recognition not available";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AvatarGlow(
            animate: isListening,
            glowColor: Color.fromARGB(255, 224, 120, 134),
            duration: const Duration(milliseconds: 2000),
            repeat: true,
            child: GestureDetector(
              onTapDown: (details) async {
                if (!isListening) {
                  var available = await speechToText.initialize();
                  if (available) {
                    setState(() {
                      isListening = true;
                    });
                    speechToText.listen(onResult: (result) {
                      setState(() {
                        text = result.recognizedWords;
                      });
                    });
                  } else {
                    setState(() {
                      text = "Speech recognition not available";
                    });
                  }
                }
              },
              onTapUp: (details) {
                setState(() {
                  isListening = false;
                });
                speechToText.stop();
              },
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 213, 82, 99),
                radius: 50,
                child: Icon(isListening ? Icons.mic_none : Icons.mic,
                    color: Colors.white, size: 35),
              ),
            ),
          ),
          SizedBox(height: 10), // Add some spacing between the button and text button
          TextButton(
            onPressed: () {
              // Handle the button press for text input
              setState(() {
                text = "You chose to type instead.";
              });
            },
            child: Text("Ask in words instead",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
          ),)
        ],
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 20), // Height of AppBar + padding
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 6.0, right: 10.0),
          child: AppBar(
            leading: const Icon(Icons.sort_rounded,size: 30,),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0.0, // Add padding above title
              title: Text(
                "Speech to Text",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ),
        ),
      
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        margin: EdgeInsets.only(bottom: 140),
        child: Text(text,
            style: TextStyle(
              fontSize: 16,
              color: isListening? Colors.black:Colors.black54,
              fontWeight: FontWeight.w500)),
      ),
    );
  }
}
