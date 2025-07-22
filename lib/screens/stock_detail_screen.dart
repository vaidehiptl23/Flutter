import 'package:flutter/material.dart';

class StockDetailScreen extends StatelessWidget {
  StockDetailScreen({super.key});

  final List<Map<String, dynamic>> history = const [
    {'type': 'Purchase', 'amount': 100, 'date': '2025-07-15'},
    {'type': 'Sale', 'amount': -50, 'date': '2025-07-14'},
    {'type': 'Transfer', 'amount': 20, 'date': '2025-07-12'},
    {'type': 'Adjustment', 'amount': -10, 'date': '2025-07-14'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
        centerTitle: true,
        actions: const [
          Icon(Icons.edit),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text('A4 Paper', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            _infoCard(),
            const SizedBox(height: 16),
            _tabButtons(),
            const SizedBox(height: 10),
            const Text(
              'Stock Movement History',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...history.map((e) => ListTile(
                  title: Text(e['type']),
                  subtitle: Text(e['date']),
                  trailing: Text(
                    '${e['amount'] > 0 ? '+' : ''}${e['amount']}',
                    style: TextStyle(
                      color: e['amount'] > 0 ? Colors.green : Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget _infoCard() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          _infoRow('HSN Code', 'Inactive'),
          _infoRow('Product Description', 'Ad Paper'),
          _infoRow('Units', 'PKT'),
          _infoRow('GST Percentage', '12.00%'),
        ],
      ),
    );
  }

  Widget _tabButtons() {
    return Wrap(
      spacing: 8,
      children: [
        _tabButton('Stock Movement'),
        _tabButton('Purchase His'),
        _tabButton('Stock Adjust'),
      ],
    );
  }

  static Widget _tabButton(String label) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[200],
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        elevation: 0,
      ),
      child: Text(label, style: const TextStyle(fontSize: 13)),
    );
  }
}

class _infoRow extends StatelessWidget {
  final String label;
  final String value;

  const _infoRow(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(value, style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
