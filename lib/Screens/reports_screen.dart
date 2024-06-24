import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reports'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              'User Reports',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('New Registrations'),
              subtitle: Text('Details of recent user sign-ups.'),
            ),
            ListTile(
              title: Text('Active Users'),
              subtitle: Text('Data on daily, weekly, and monthly active users.'),
            ),
            ListTile(
              title: Text('User Demographics'),
              subtitle: Text('Insights into user demographics like age, location, and gender.'),
            ),
            Divider(),
            Text(
              'Financial Reports',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Sales Reports'),
              subtitle: Text('Summary of sales data, revenue, and transactions.'),
            ),
            ListTile(
              title: Text('Expense Reports'),
              subtitle: Text('Details on expenditures and costs.'),
            ),
            ListTile(
              title: Text('Profit and Loss Statements'),
              subtitle: Text('Overview of financial performance.'),
            ),
            Divider(),
            Text(
              'System Performance Reports',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Uptime Reports'),
              subtitle: Text('Metrics on system availability and uptime.'),
            ),
            ListTile(
              title: Text('Load Reports'),
              subtitle: Text('Data on system load and resource usage.'),
            ),
            ListTile(
              title: Text('Response Times'),
              subtitle: Text('Insights into system response and processing times.'),
            ),
            Divider(),
            Text(
              'Content Reports',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Content Usage'),
              subtitle: Text('Statistics on which content is most viewed or interacted with.'),
            ),
            ListTile(
              title: Text('Content Performance'),
              subtitle: Text('Analysis of content effectiveness and engagement.'),
            ),
            Divider(),
            Text(
              'Security Reports',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Access Logs'),
              subtitle: Text('Logs of user access and login attempts.'),
            ),
            ListTile(
              title: Text('Incident Reports'),
              subtitle: Text('Details of security incidents or breaches.'),
            ),
            ListTile(
              title: Text('Audit Trails'),
              subtitle: Text('Comprehensive records of changes and actions taken within the system.'),
            ),
            Divider(),
            Text(
              'Custom Reports',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('User-Defined Reports'),
              subtitle: Text('Options for generating reports based on specific criteria or custom queries.'),
            ),
            ListTile(
              title: Text('Scheduled Reports'),
              subtitle: Text('Regularly generated reports sent to specified recipients.'),
            ),
          ],
        ),
      ),
    );
  }
}
