import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Attendance"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate: DateTime(2020),
              lastDate: DateTime(2030),
              onDateChanged: (_) {},
            ),
            const SizedBox(height: 10),
            const Text("Upcoming Holidays", style: TextStyle(fontWeight: FontWeight.bold)),
            ListTile(
              leading: Icon(Icons.calendar_today, color: Colors.red),
              title: const Text("Guru Purnima"),
              subtitle: const Text("18 July, 2025"),
            ),
            const SizedBox(height: 10),
            const Text("Upcoming Birthdays", style: TextStyle(fontWeight: FontWeight.bold)),
            ListTile(
              leading: Icon(Icons.cake, color: Colors.orange),
              title: const Text("Bhavan Patel"),
              subtitle: const Text("21 July, 2025"),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Request Leave"),
              style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
            )
          ],
        ),
      ),
    );
  }
}
