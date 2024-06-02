// lib/main.dart
import 'package:flutter/material.dart'; 

void main() {
  runApp(ContactBookApp());
}

class ContactBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact Book App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactPage(),
    );
  }
}

class ContactPage extends StatelessWidget {
  final Contact contact = Contact(
    name: 'John Doe',
    roll: '123456',
    department: 'Computer Science',
    college: 'XYZ University',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              contact.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Roll: ${contact.roll}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Department: ${contact.department}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'College: ${contact.college}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}


// lib/models/contact.dart
class Contact {
  final String name;
  final String roll;
  final String department;
  final String college;

  Contact({required this.name, required this.roll, required this.department, required this.college});
}
