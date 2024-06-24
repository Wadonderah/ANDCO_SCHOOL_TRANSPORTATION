// ignore_for_file: avoid_print, library_private_types_in_public_api, duplicate_ignore

import 'package:flutter/material.dart';

class RouteCreationScreen extends StatefulWidget {
  const RouteCreationScreen({super.key});

  @override
  _RouteCreationScreenState createState() => _RouteCreationScreenState();
}

class _RouteCreationScreenState extends State<RouteCreationScreen> {
  final _formKey = GlobalKey<FormState>();
  String _busNumber = '';
  String _driverName = '';
  String _driverNumber = '';
  String _busInchargeName = '';
  String _inchargeEmail = '';
  String _busInchargeContacts = '';
  String _capacity = '';
  String _pickupRegion = '';
  String _pickupPoint = '';
  String _dropoffRegion = '';
  String _dropoffPoint = '';

  final List<String> _regions = [
    'Nairobi',
    'Mombasa',
    'Kisumu',
    'Nakuru',
    'Eldoret',
    'Thika',
    'Nyeri',
    'Meru',
    'Other'
  ];

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
            children: [
              _buildTextField('Bus Number', (value) => _busNumber = value),
              _buildTextField('Driver Name', (value) => _driverName = value),
              _buildTextField('Driver Number', (value) => _driverNumber = value),
              _buildTextField('Bus Incharge Name', (value) => _busInchargeName = value),
              _buildTextField('Incharge Email', (value) => _inchargeEmail = value),
              _buildTextField('Bus Incharge Contacts', (value) => _busInchargeContacts = value),
              _buildTextField('Capacity', (value) => _capacity = value),
              _buildDropdownField('Pick-up Region', _regions, (value) => _pickupRegion = value),
              _buildTextField('Pick-up Point', (value) => _pickupPoint = value),
              _buildDropdownField('Drop-off Region', _regions, (value) => _dropoffRegion = value),
              _buildTextField('Drop-off Point', (value) => _dropoffPoint = value),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    // Handle form submission
                    // ignore: avoid_print
                    print('Bus Number: $_busNumber');
                    print('Driver Name: $_driverName');
                    print('Driver Number: $_driverNumber');
                    print('Bus Incharge Name: $_busInchargeName');
                    print('Incharge Email: $_inchargeEmail');
                    print('Bus Incharge Contacts: $_busInchargeContacts');
                    print('Capacity: $_capacity');
                    print('Pick-up Region: $_pickupRegion');
                    print('Pick-up Point: $_pickupPoint');
                    print('Drop-off Region: $_dropoffRegion');
                    print('Drop-off Point: $_dropoffPoint');
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

  Widget _buildTextField(String label, Function(String) onSave) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $label';
          }
          return null;
        },
        onSaved: (value) => onSave(value!),
      ),
    );
  }

  Widget _buildDropdownField(String label, List<String> items, Function(String) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: (value) => onChanged(value!),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please select $label';
          }
          return null;
        },
      ),
    );
  }
}



