import 'package:flutter/material.dart';
import 'package:mediq_flutter/screen/home.dart';
import 'package:mediq_flutter/screen/welcome_screen.dart';
import 'package:mediq_flutter/screen/registration_page.dart';
import 'package:mediq_flutter/widgets/navbar.dart'; // Import the registration page

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _errorText = '';

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/login.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.3,
              left: screenWidth * 0.1,
              right: screenWidth * 0.1,
              child: Column(
                children: [
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    _errorText,
                    style: TextStyle(color: Colors.red),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 17, 42, 70)),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 138.0),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (_emailController.text == 'abc' &&
                          _passwordController.text == '123') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePageNew(),
                          ),
                        );
                      } else {
                        setState(() {
                          _errorText = 'Invalid email or password';
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              top: screenHeight * 0.63,
              left: screenWidth * 0.1,
              right: screenWidth * 0.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 45.0),
                child: Row(
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigate to the registration page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegistrationPage()),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 17, 42, 70),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.75,
              left: screenWidth * 0.1,
              right: screenWidth * 0.1,
              child: Column(
                children: [
                  Text("or continue with"),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Center align the icons
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/icons/google.jpg',
                          width: 80,
                          height: 80,
                        ),
                      ),
                      SizedBox(width: 15.0),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/icons/meta.png',
                          width: 80,
                          height: 80,
                        ),
                      ),
                      SizedBox(width: 15.0),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/icons/apple.png',
                          width: 70,
                          height: 70,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
