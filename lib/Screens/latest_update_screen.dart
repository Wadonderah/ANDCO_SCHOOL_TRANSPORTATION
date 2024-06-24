import 'package:flutter/material.dart';

class LatestUpdateScreen extends StatelessWidget {
  const LatestUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latest Updates'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              'System Updates',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Version 1.2.3'),
              subtitle: Text('Released on 2024-06-23\n- Improved performance\n- Fixed minor bugs'),
            ),
            Divider(),
            Text(
              'New Features',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Added Real-time Notifications'),
            ),
            Divider(),
            Text(
              'Bug Fixes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Fixed login issue on Android devices'),
            ),
            Divider(),
            Text(
              'Announcements',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Scheduled maintenance on 2024-07-01'),
            ),
            Divider(),
            Text(
              'Change Log',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Full change log details'),
            ),
            Divider(),
            Text(
              'Upcoming Changes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('- Introducing Dark Mode\n- User profile improvements'),
            ),
            Divider(),
            Text(
              'Security Updates',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Patched vulnerability in user authentication'),
            ),
          ],
        ),
      ),
    );
  }
}
