import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Step4 extends StatelessWidget {
  const Step4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 20),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 6.0),
          child: AppBar(
            leading: const Icon(
              Icons.sort_rounded,
              size: 30,
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text(
              'Instructions',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0,left: 20.0,right: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                  iconSize: 30.0,
                ),
                Image.asset(
                  'assets/images/instructions/step_4.png',
                  width: 250,
                  height: 250,
                ),
                IconButton(
                  onPressed: () {
                    // Add your navigation to the next step here
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                  iconSize: 30.0,
                ),
              ],
            ),
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 20.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'Step 4 - Asssist',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45
                        ),
                    ),
                  ),
                    SizedBox(height: 40),
                    Text(
                      "If coughing doesn't work, perform abdominal thrusts.",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

