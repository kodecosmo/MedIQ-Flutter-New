import 'package:flutter/material.dart';
import 'package:mediq_flutter/screen/instructions/step1.dart';

class HorizontalSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal Slider'),
      ),
      body: PageView.builder(
        itemCount: 5, // Number of pages (assuming you have 5 steps)
        itemBuilder: (context, index) {
          // Return a Step1 widget for each page
          return Step1(); // You may pass additional parameters if needed
        },
      ),
    );
  }
}
