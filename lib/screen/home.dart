import 'package:flutter/material.dart';
import 'package:mediq_flutter/screen/instructions.dart';
import 'package:mediq_flutter/screen/sos.dart';
import 'package:mediq_flutter/widgets/chatbot_card.dart';
import 'package:mediq_flutter/widgets/community_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyHomePageNew extends StatefulWidget {
  const MyHomePageNew({Key? key}) : super(key: key);

  @override
  State<MyHomePageNew> createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePageNew> {
  // controller for the page view
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "MedIQ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sos()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.red.shade300,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.emergency, color: Colors.white),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
              ),
              child: const Center(
                child: Text(
                  'MedIQ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle settings navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                // Handle about navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_support),
              title: Text('Support'),
              onTap: () {
                // Handle support navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Handle logout
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25),
              // welcome message
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Welcome, Intoloo!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 25),
              // Emergency card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ChatbotCard(),
              ),
              // column of quick actions
              SizedBox(height: 35),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Quick Actions",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    // Use GestureDetector for each action
                    GestureDetector(
                      onTap: () {
                        // Handle action onTap
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Instructions()),
                        );
                      },
                      child: buildQuickAction(
                        icon: Icons.flash_on,
                        title: "Choking",
                        subtitle: "Available Offline",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Instructions()),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Instructions()),
                        );
                      },
                      child: buildQuickAction(
                        icon: Icons.flash_on,
                        title: "Choking",
                        subtitle: "Available Offline",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Instructions()),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        // Handle action onTap
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Instructions()),
                        );
                      },
                      child: buildQuickAction(
                        icon: Icons.flash_on,
                        title: "Allergic Reaction",
                        subtitle: "Available Offline",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Instructions()),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        // Handle action onTap
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Instructions()),
                        );
                      },
                      child: buildQuickAction(
                        icon: Icons.flash_on,
                        title: "CPR",
                        subtitle: "Available Offline",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Instructions()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "From the Community",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 25),
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
                ),
              ),
              SizedBox(height: 25),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Colors.blue,
                  dotColor: Colors.grey,
                  dotHeight: 8,
                  dotWidth: 8,
                ),
              ),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildQuickAction({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black87),
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(245, 250, 255, 1),
      ),
      child: InkWell(
        onTap: onTap, // Assign the onTap callback
        child: ListTile(
          leading: Icon(icon, color: Colors.blue),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: const Icon(Icons.navigate_next),
          contentPadding: const EdgeInsets.symmetric(horizontal: 25),
          horizontalTitleGap: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
