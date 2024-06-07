import 'package:flutter/material.dart';
import 'package:mediq_flutter/on-boarding-screens.dart';
import 'package:mediq_flutter/screen/chatbot.dart';
import 'package:mediq_flutter/screen/first_aid.dart';
import 'package:mediq_flutter/screen/home.dart';
import 'package:mediq_flutter/screen/instructions/step1.dart';
import 'package:mediq_flutter/screen/instructions/step2.dart';
import 'package:mediq_flutter/screen/loading_connect.dart';
import 'package:mediq_flutter/screen/home.dart';
import 'package:mediq_flutter/screen/instructions.dart';
import 'package:mediq_flutter/screen/login.dart';
import 'package:mediq_flutter/screen/sos.dart';
import 'package:mediq_flutter/screen/user_calls/calling_api.dart';
import 'package:mediq_flutter/screen/welcome_screen.dart';
import 'package:mediq_flutter/screen/splash.dart';
import 'package:mediq_flutter/screen/emt_connect.dart';
import 'package:mediq_flutter/widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediQ',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Instructions(),
      routes: {
       // '/': (context) => const SplashScreen(),
        '/welcome': (context) => const WelcomeScreen(),
        '/login': (context) =>  LoginPage(),
        '/onboarding': (context) => const OnBoardingScreen(),
        '/chatbot': (context) => const ChatbotPage(),
      }
    );
  }
}

