import 'package:flutter/material.dart';

class VendorsScreen extends StatelessWidget {
  const VendorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Vendors"), centerTitle: true),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search vendor/company...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                ListTile(
                  title: Text("Tech Solutions Inc."),
                  subtitle: Text("ethan.harper@example.com\nNew York, NY"),
                  trailing: Icon(Icons.call),
                ),
                Divider(),
                ListTile(
                  title: Text("Creative Designs Co."),
                  subtitle: Text("olivia.bennett@example.com\nLos Angeles, CA"),
                  trailing: Icon(Icons.call),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
