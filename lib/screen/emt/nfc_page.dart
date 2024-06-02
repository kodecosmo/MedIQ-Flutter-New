import 'package:flutter/material.dart';
import 'notification_page.dart';

class NFCPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Patient details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
              ),
              SizedBox(height: 10),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.black),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NFC Connected',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'Poppins')
                      ),
                      SizedBox(height: 20),
                      Text('• Patient details scanned successfully.'),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                           Navigator.of(context).pushNamed('/');
                        },
                        child: Text('Proceed'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[200],
                          foregroundColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
