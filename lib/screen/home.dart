import 'package:flutter/material.dart';
import 'package:mediq_flutter/widgets/chatbot_card.dart';
import 'package:mediq_flutter/widgets/community_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyHomePageNew extends StatefulWidget {
  const MyHomePageNew({super.key});

  @override
  State<MyHomePageNew> createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePageNew> {
  // controller for the page view
  final _controller = PageController();

  // GlobalKey to control the Scaffold
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Assign the GlobalKey to the Scaffold
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
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.red.shade300,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.emergency, color: Colors.white),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
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
              const SizedBox(height: 25),
              // welcome message
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Welcome, Intoloo!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(height: 25),
              // Emergency card
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: ChatbotCard(),
              ),
              // column of quick actions
              const SizedBox(height: 35),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Quick Actions",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 25),
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
                          color: const Color.fromRGBO(245, 250, 255, 1),
                        ),
                        child: ListTile(
                          leading:
                              const Icon(Icons.flash_on, color: Colors.blue),
                          title: const Text("Choking"),
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
                          leading:
                              const Icon(Icons.flash_on, color: Colors.blue),
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
                          leading:
                              const Icon(Icons.flash_on, color: Colors.blue),
                          title: const Text("Allergic Reaction"),
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
                          leading:
                              const Icon(Icons.flash_on, color: Colors.blue),
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
                ),
              ),
              const SizedBox(height: 35),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "From the Community",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 25),
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
              const SizedBox(height: 25),
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
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
