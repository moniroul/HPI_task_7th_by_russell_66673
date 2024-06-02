// lib/main.dart

import 'package:flutter/material.dart';

void main() {
  runApp(StudentListApp());
}

class StudentListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student List App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StudentListPage(),
    );
  }
}

class StudentListPage extends StatelessWidget {
  final List<Student> students = getMockStudents();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
            child: Card(
              elevation: 8.0,
              child: ListTile(
                title: Text(student.name),
                subtitle: Text('${student.college} - ${student.department}'),
              ),
            ),
          );
        },
      ),
    );
  }
}

// lib/mock_data.dart

List<Student> getMockStudents() {
  return [
    Student(
        name: "John Doe",
        college: "ABC University",
        department: "Computer Science"),
    Student(
        name: "Jane Smith",
        college: "XYZ College",
        department: "Mechanical Engineering"),
    Student(
        name: "Michael Johnson",
        college: "LMN Institute",
        department: "Electrical Engineering"),
    Student(
        name: "Emily Davis",
        college: "OPQ Academy",
        department: "Civil Engineering"),
    // Add more students as needed
  ];
}

class Student {
  final String name;
  final String college;
  final String department;

  Student(
      {required this.name, required this.college, required this.department});
}
