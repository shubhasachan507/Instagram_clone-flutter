import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive/responsive_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: 'AIzaSyC5j0MO4LHzsIMVGEVbg75KDwqVQuZfKG4',
            appId: '1:675826401695:web:a629b0b7ddcb0805efbdaa',
            messagingSenderId: '675826401695',
            projectId: 'instagram-clone-flutter-67a3c',
            storageBucket: 'instagram-clone-flutter-67a3c.appspot.com'));
  } else {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Instagram Clone',
      home: Scaffold(
        body: ResponsiveLayout(),
      ),
    );
  }
}
