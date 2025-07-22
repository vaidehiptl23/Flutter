import 'package:flutter/material.dart';
import 'stock_detail_screen.dart';

class StockListScreen extends StatelessWidget {
  const StockListScreen({super.key});

  final List<Map<String, dynamic>> items = const [
    {
      'name': 'A4 Paper',
      'gst': '12.00%',
      'color': 'Blue',
      'quantity': 125,
      'total': 1028,
      'status': 'In Stock'
    },
    {
      'name': 'Punching Machine',
      'gst': '21.00%',
      'color': 'White',
      'quantity': 150,
      'total': 1300,
      'status': 'In Stock'
    },
    {
      'name': 'Calculator',
      'gst': '14.00%',
      'color': 'Black',
      'quantity': 75,
      'total': 389,
      'status': 'Out of Stock'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock Items'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Navigate to add item screen
            },
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: items.length,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => StockDetailScreen()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(item['name'], style: const TextStyle(fontWeight: FontWeight.bold)),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: item['status'] == 'In Stock' ? Colors.green[100] : Colors.red[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          item['status'],
                          style: TextStyle(
                            fontSize: 12,
                            color: item['status'] == 'In Stock' ? Colors.green : Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text('GST Percentage: ${item['gst']}'),
                  Text('Color: ${item['color']}'),
                  Text('Quantity: ${item['quantity']}  |  Total: ${item['total']}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
