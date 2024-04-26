import 'package:flutter/material.dart';

void main() {
  runApp(EmployeeApp());
}

class EmployeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Employee App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EmployeeHomeScreen(),
    );
  }
}

class EmployeeHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/avatar.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'John Doe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Software Developer',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 20),
            EmployeeInfoCard(
              icon: Icons.phone,
              label: 'Phone',
              value: '+1234567890',
            ),
            EmployeeInfoCard(
              icon: Icons.email,
              label: 'Email',
              value: 'john.doe@example.com',
            ),
            EmployeeInfoCard(
              icon: Icons.location_on,
              label: 'Address',
              value: '123 Main Street, City, Country',
            ),
          ],
        ),
      ),
    );
  }
}

class EmployeeInfoCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const EmployeeInfoCard({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListTile(
        leading: Icon(icon),
        title: Text(label),
        subtitle: Text(value),
      ),
    );
  }
}
