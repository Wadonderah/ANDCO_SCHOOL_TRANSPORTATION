import 'package:flutter/material.dart';

class RouteCreationScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  RouteCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route Creation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              _buildTextField('Bus Number'),
              const SizedBox(height: 16),
              _buildTextField('Driver Name'),
              const SizedBox(height: 16),
              _buildTextField('Driver Number', keyboardType: TextInputType.phone),
              const SizedBox(height: 16),
              _buildTextField('Bus Incharge Name'),
              const SizedBox(height: 16),
              _buildTextField('Incharge Email', keyboardType: TextInputType.emailAddress),
              const SizedBox(height: 16),
              _buildTextField('Bus Incharge Contacts', keyboardType: TextInputType.phone),
              const SizedBox(height: 16),
              _buildTextField('Capacity', keyboardType: TextInputType.number),
              const SizedBox(height: 16),
              _buildTextField('Pickup Point'),
              const SizedBox(height: 16),
              _buildTextField('Drop Off Point'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Process data
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Create Route'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, {TextInputType keyboardType = TextInputType.text}) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
      keyboardType: keyboardType,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label';
        }
        return null;
      },
    );
  }
}
