import "package:flutter/material.dart";

class CommunityCard extends StatelessWidget {
  final String title;
  final String description;
  final String readTime;
  final String imageUrl;
  final color;

  const CommunityCard({
    super.key,
    required this.title,
    required this.description,
    required this.readTime,
    required this.imageUrl,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 330,
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.group, color: color),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text(description),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(Icons.timer, color: Colors.blue),
                    Text("  " + readTime + " Read"),
                  ],
                ),
                // should add a read more button here
                Icon(Icons.arrow_forward_ios)
              ],
            )
          ],
        ),
      ),
    );
  }
}