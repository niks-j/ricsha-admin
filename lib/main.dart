import 'package:flutter/material.dart';
import 'package:ricsha_admin/dashboard/side_navigation_drawer.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyACmZ7tGEIZ9TM1gBtmMmkcMIrf9SoWPtQ",
        authDomain: "ride-share-23628.firebaseapp.com",
        databaseURL: "https://ride-share-23628-default-rtdb.firebaseio.com",
        projectId: "ride-share-23628",
        storageBucket: "ride-share-23628.appspot.com",
        messagingSenderId: "77770027076",
        appId: "1:77770027076:web:9e90e4586a5ee469978c11",
        measurementId: "G-T9QV6JYVH3",
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Panel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: const SideNavigationDrawer(),
    );
  }
}

