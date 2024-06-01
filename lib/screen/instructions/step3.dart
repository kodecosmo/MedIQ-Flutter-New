import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mediq_flutter/screen/instructions/step4.dart';

class Step3 extends StatelessWidget {
  const Step3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 20),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 20.0),
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
            actions:[
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 240, 127, 127),
              ),
              child: IconButton(
                onPressed: (){}, 
                  icon: Icon(Icons.emergency_sharp),
                  iconSize: 20.0,
                  color: Colors.white,
                  ),
            )
              ], 
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
                  'assets/images/instructions/step_3.png',
                  width: 250,
                  height: 250,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Step4()),
                );
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
                        'Step 3 - Coughing',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45
                        ),
                    ),
                  ),
                    SizedBox(height: 40),
                    Text(
                      "Encourage the person to cough to try to expel the object.",
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

