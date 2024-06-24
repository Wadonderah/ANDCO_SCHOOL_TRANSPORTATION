import 'package:flutter/material.dart';

class NewRegistrationScreen extends StatelessWidget {
  const NewRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Registration'),
      ),
      body: const Center(
        child: Text('New Registration Screen'),
      ),
    );
  }
}
