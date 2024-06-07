import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mediq_flutter/screen/instructions/step2.dart';

class Step1 extends StatefulWidget {
  const Step1({Key? key}) : super(key: key);

  @override
  _Step1State createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  late Map<String, dynamic> jsonData;
  String title = '';
  String description = '';

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  Future<void> loadJsonData() async {
    // Load JSON data from assets
    String jsonString = await rootBundle.loadString(
        '/Users/shakthiraveen/Downloads/MedIQ-Flutter-New/lib/screen/instructions/choking.json');
    setState(() {
      // Parse JSON data
      jsonData = json.decode(jsonString);
      // Extract information based on your JSON structure
      title = jsonData['step_01']['title'];
      description = jsonData['step_01']['Description'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Image.asset(
                    'assets/images/instructions/step_1.png',
                    width: 250,
                    height: 250,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Step2()),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                  iconSize: 30.0,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        description,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
