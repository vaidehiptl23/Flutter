import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Profile")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(decoration: _inputDecoration("Name")),
            const SizedBox(height: 10),
            TextField(decoration: _inputDecoration("Email")),
            const SizedBox(height: 10),
            TextField(decoration: _inputDecoration("Mobile Number")),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
              child: const Text("Save Changes"),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      fillColor: Colors.grey[200],
      filled: true,
    );
  }
}
