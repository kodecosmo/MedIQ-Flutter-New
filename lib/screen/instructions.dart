import 'package:flutter/material.dart';
import 'package:mediq_flutter/widgets/instruction_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Instructions extends StatelessWidget {
  const Instructions({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _controller = PageController();

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
            title: const Text(
              'Instructions',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black, // Ensure the title text is visible
              ),
            ),
            actions: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 240, 127, 127),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.emergency_sharp),
                  iconSize: 20.0,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: const [
                InstructionCard(
                  imageUrl: "assets/images/instructions/step_1.png",
                  title: "Step 1 - Check",
                  description: "Check the person's airway and assess the situation.",
                ),
                InstructionCard(
                  imageUrl: "assets/images/instructions/step_2.png",
                  title: "Step 2 - Lean",
                  description: "Lean the person forward to help dislodge the obstruction.",
                ),
                InstructionCard(
                  imageUrl: "assets/images/instructions/step_3.png",
                  title: "Step 3 - Coughing",
                  description: "Encourage the person to cough to try to expel the object.",
                ),
                InstructionCard(
                  imageUrl: "assets/images/instructions/step_4.png",
                  title: "Step 4 - Assist",
                  description: "If coughing doesn't work, perform abdominal thrusts.",
                ),
                InstructionCard(
                  imageUrl: "assets/images/instructions/step_5.png",
                  title: "Step 5 - Reassure",
                  description: "Reassure the person and keep them calm.",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0,bottom: 120.0),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 5, // Update count to match number of pages
              effect: ExpandingDotsEffect(
                activeDotColor: Color.fromARGB(255, 240, 127, 127),
                dotColor: const Color.fromARGB(255, 249, 207, 207),
                dotHeight: 9,
                dotWidth: 9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
