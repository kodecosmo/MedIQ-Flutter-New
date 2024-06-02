import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'connected_page.dart';
import 'nfc_page.dart';

class PatientDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
             SizedBox(height: 60),
            Text(

              'Patient details',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            BulletPointText('Patient has swallowed something.'),
            BulletPointText('Has troubles with breathing.'),
            BulletPointText('Location - Inside UCSC premises.'),
            SizedBox(height: 50),
            Text(
              'Steps Followed',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            BulletPointText('Step 1 - Check'),
            BulletPointText('Step 2 - Lean'),
            BulletPointText('Step 3 - Coughing'),
            BulletPointText('Step 4 - In progress'),
            SizedBox(height: 80),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.black),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Connecting',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.mic),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ConnectedPage()),
                            );
                          },
                          child: Text('Accept'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[200],
                            foregroundColor: Colors.white,
                          ),
                        ),

                        ElevatedButton(
                          onPressed: () {
                             Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NFCPage()),
                            );
                          },
                          child: Text('Redirect'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red[200],
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BulletPointText extends StatelessWidget {
  final String text;

  BulletPointText(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '• ',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
