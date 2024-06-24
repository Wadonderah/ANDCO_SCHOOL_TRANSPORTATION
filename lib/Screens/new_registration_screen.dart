import 'package:flutter/material.dart';

class NewRegistrationScreen extends StatelessWidget {
  const NewRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Registrations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'User Details',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const ListTile(
              title: Text('Name: John Doe'),
              subtitle: Text('Email: john.doe@example.com\nRegistration Date: 2024-06-23'),
            ),
            const Divider(),
            const Text(
              'Verification Status',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const ListTile(
              title: Text('Email Verified'),
              trailing: Icon(Icons.check_circle, color: Colors.green),
            ),
            const ListTile(
              title: Text('Identity Verified'),
              trailing: Icon(Icons.cancel, color: Colors.red),
            ),
            const Divider(),
            const Text(
              'Approval Queue',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const ListTile(
              title: Text('Pending Approval: 5'),
            ),
            const Divider(),
            const Text(
              'Registration Trends',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 200,
              color: Colors.grey[200],
              child: const Center(child: Text('Graphs and Statistics here')),
            ),
            const Divider(),
            const Text(
              'Referral Sources',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const ListTile(
              title: Text('Google: 50%'),
            ),
            const ListTile(
              title: Text('Facebook: 30%'),
            ),
            const ListTile(
              title: Text('Others: 20%'),
            ),
            const Divider(),
            const Text(
              'Notifications',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const ListTile(
              title: Text('Suspicious Registration Detected'),
              subtitle: Text('User: suspicious.user@example.com'),
              trailing: Icon(Icons.warning, color: Colors.orange),
            ),
            const Divider(),
            const Text(
              'Bulk Actions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Approve logic
                  },
                  child: const Text('Approve All'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Reject logic
                  },
                  child: const Text('Reject All'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Manage logic
                  },
                  child: const Text('Manage Selected'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
