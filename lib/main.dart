import 'package:fire_track/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyC9jbQLOBCvg_9qnJwNOKQyvmA5xxlWnjI',
      appId: '1:324321966537:android:b4938df33f352563e65018',
      messagingSenderId: '324321966537',
      projectId: 'fire-track-60af1',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange.shade600),
        useMaterial3: true,
      ),
      home: const KeyboardVisibilityProvider(
        child: LoginScreen(),
      ),
    );
  }
}

