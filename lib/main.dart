import 'package:flutter/material.dart';
import 'Screens/home_screen.dart';
import 'Screens/route_creation_screen.dart';
import 'admin_dashboard.dart';

void main() {
  runApp(const UsafiriApp());
}

class UsafiriApp extends StatelessWidget {
  const UsafiriApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Usafiri Admin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AdminHomePage(),
       routes: {
        '/home': (context) => const HomeScreen(),
        '/route-creation': (context) => RouteCreationScreen(),
        '/view-routes': (context) => ViewRoutesScreen(),
        '/new-registration': (context) => NewRegistrationScreen(),
        '/latest-update': (context) => LatestUpdateScreen(),
        '/reports': (context) => ReportsScreen(),
      },
    );
  }
}


