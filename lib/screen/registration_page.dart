import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

import 'package:flutter/material.dart';
import 'package:mediq_flutter/screen/login.dart'; 

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();



void _saveUser() async {
  final String name = _nameController.text;
  final String email = _emailController.text;
  final String password = _passwordController.text;
try{ if (name.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
    final Map<String, dynamic> userData = {
      'name': name,
      'email': email,
      'password': password,
    };

    final String userJson = json.encode(userData);

    // Get the documents directory
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String filePath = '${documentsDirectory.path}/user_data.json';

    // Write data to the file
    File jsonFile = File(filePath);
    jsonFile.writeAsStringSync(userJson);

    // Show a success message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('User data saved successfully!'),
      ),
    );

    // Redirect to the login page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  } else {
    // Show an error message if any field is empty
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Please fill in all fields.'),
        backgroundColor: Colors.red,
      ),
    );
  }}
  catch (e) {
    print('Error saving user data: $e');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Error saving user data. Please try again.'),
        backgroundColor: Colors.red,
      ),
    );
  }
  // Validate the input fields
 
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Registration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _saveUser,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
