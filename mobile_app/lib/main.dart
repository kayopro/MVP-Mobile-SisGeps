import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/initial_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/register_screen.dart';
import 'screens/forgot_password_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Initialize Firebase asynchronously
  Future<void> initializeFirebase() async {
    await Firebase.initializeApp();
  }
//class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize Firebase and wait for completion
      future: initializeFirebase(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // Once Firebase is initialized, return MaterialApp
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: InitialScreen(),
            routes: {
              '/login': (context) => LoginScreen(),
              '/home': (context) => HomeScreen(),
              '/register': (context) => RegisterScreen(),
              '/forgot_password': (context) => ForgotPasswordScreen(),
          }
          );
        } else {
          // Show loading indicator while Firebase is initializing
          return CircularProgressIndicator();
          }
      }
    );
  }
}