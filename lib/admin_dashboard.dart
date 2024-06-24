// ignore_for_file: non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'Screens/home_screen.dart';
import 'Screens/route_creation_screen.dart';
import 'Screens/view_routes_screen.dart';
import 'Screens/new_registration_screen.dart';
import 'Screens/latest_update_screen.dart';
import 'Screens/reports_screen.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://th.bing.com/th/id/R.f9fecbd1c87512985ac0cb4535df515c?rik=Tm96ToE4RVM4FQ&riu=http%3a%2f%2fimg.bj.wezhan.cn%2fcontent%2fsitefiles%2f2095763%2fimages%2f3074662_Bus.jpg&ehk=vieXPpZ2PwNbtjt5%2f%2bcgDSyPkcbnuofNXkR6uBmtH7U%3d&risl=&pid=ImgRaw&r=0'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Admin Menu',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
            _createDrawerItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            _createDrawerItem(
              icon: Icons.add_road,
              text: 'Route Creation',
              onTap: () {
                Navigator.pushNamed(context, '/route-creation');
              },
            ),
            _createDrawerItem(
              icon: Icons.route,
              text: 'View Routes',
              onTap: () {
                Navigator.pushNamed(context, '/view-routes');
              },
            ),
            _createDrawerItem(
              icon: Icons.person_add,
              text: 'New Registration',
              onTap: () {
                Navigator.pushNamed(context, '/new-registration');
              },
            ),
            _createDrawerItem(
              icon: Icons.update,
              text: 'Latest Update',
              onTap: () {
                Navigator.pushNamed(context, '/latest-update');
              },
            ),
            _createDrawerItem(
              icon: Icons.report,
              text: 'Reports',
              onTap: () {
             Navigator.pushNamed(context, '/reports');
              },
            ),
            _createDrawerItem(
              icon: Icons.logout,
              text: 'Logout',
              onTap: () {
                // Handle logout logic
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.directions_bus,
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to the Usafiri Admin Dashboard!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _createDrawerItem({IconData? icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
  
  routeCreationScreen() {}
}

ReportsScreen() {
}

LatestUpdateScreen() {
}

NewRegistrationScreen() {
}

ViewRoutesScreen() {
}

