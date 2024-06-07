import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InstructionCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const InstructionCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child:
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                    width: 320,
                    height: 320,
                    child: Image.asset(
                      imageUrl,
                      fit: BoxFit.cover, // Adjust the fit property as needed
                    ),
                  ),
                ),
                SizedBox(height: 30), // Add some space between the image and text
                Padding(
                  padding: const EdgeInsets.only(left: 5.0 ,right: 10.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          title,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 20), // Add some space between the title and description
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(description,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5), // Add some space between the title and description
              ],
            ),
          
        ),
      
    );
  }
}
