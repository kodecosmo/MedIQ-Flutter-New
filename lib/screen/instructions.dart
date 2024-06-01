import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Instructions extends StatelessWidget {
  const Instructions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 20),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 6.0, right: 6.0),
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
        padding: const EdgeInsets.only(top:30.0,left:20.0),
        child: Container(
          color: Colors.white,
          height: 500,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildCard(),
              SizedBox(width: 25,),
              buildCard(),
              SizedBox(width: 25,),
              buildCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard() {
    return Center(
      child: Container(
        width: 350,
        height: 500,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Image.asset(
                  'assets/images/instructions/step_1.png',
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Step 1 - Check',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Check the person's airway and assess the situation.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),)
          ],
        )
      ),
    );
  }
}
