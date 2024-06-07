import "package:flutter/material.dart";
import "package:mediq_flutter/widgets/chatbot_card.dart";
import "package:mediq_flutter/widgets/community_card.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // controller for the page view
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // app bar
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // hamburger icon
                      Icon(Icons.menu, color: Colors.black),

                      const Text(
                        "MedIQ",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),

                      // emergency button
                      Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.red.shade300,
                            shape: BoxShape.circle,
                          ),
                          child:
                              const Icon(Icons.emergency, color: Colors.white))
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // wellcome message
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Welcome, Kode!",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                // Emergency card
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ChatbotCard(),
                ),

                // column of quick action
                SizedBox(height: 35),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Quick Actions",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(245, 250, 255, 1),
                            ),
                            child: ListTile(
                              leading: const Icon(Icons.flash_on,
                                  color: Colors.blue),
                              title: const Text("Choaking"),
                              subtitle: const Text("Available Offline"),
                              trailing: const Icon(Icons.navigate_next),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              horizontalTitleGap: 20,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(245, 250, 255, 1),
                            ),
                            child: ListTile(
                              leading: const Icon(Icons.flash_on,
                                  color: Colors.blue),
                              title: const Text("Severe Bleeding"),
                              subtitle: const Text("Available Offline"),
                              trailing: const Icon(Icons.navigate_next),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              horizontalTitleGap: 20,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(245, 250, 255, 1),
                            ),
                            child: ListTile(
                              leading: const Icon(Icons.flash_on,
                                  color: Colors.blue),
                              title: const Text("Alergic Reaction"),
                              subtitle: const Text("Available Offline"),
                              trailing: const Icon(Icons.navigate_next),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              horizontalTitleGap: 20,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(245, 250, 255, 1),
                            ),
                            child: ListTile(
                              leading: const Icon(Icons.flash_on,
                                  color: Colors.blue),
                              title: const Text("CPR"),
                              subtitle: const Text("Available Offline"),
                              trailing: const Icon(Icons.navigate_next),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              horizontalTitleGap: 20,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),

                SizedBox(height: 35),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "From the Community",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                // community card
                Container(
                    height: 180,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      controller: _controller,
                      children: const [
                        CommunityCard(
                          title: "Community",
                          description: "Join the community and share...",
                          readTime: "5 min",
                          imageUrl: "assets/images/community.png",
                          color: Colors.blue,
                        ),
                        CommunityCard(
                          title: "Community",
                          description: "Join the community and share...",
                          readTime: "5 min",
                          imageUrl: "assets/images/community.png",
                          color: Colors.blue,
                        ),
                        CommunityCard(
                          title: "Community",
                          description: "Join the community and share...",
                          readTime: "5 min",
                          imageUrl: "assets/images/community.png",
                          color: Colors.blue,
                        ),
                      ],
                    )),

                const SizedBox(height: 25),

                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.blue,
                    dotColor: Colors.grey,
                    dotHeight: 8,
                    dotWidth: 8,
                  ),
                ),

                const SizedBox(height: 25),
              ],
            ),
          ),
        ));
  }
}