import 'package:flutter/material.dart';

class TestimoniView extends StatelessWidget {
  const TestimoniView({super.key});

  @override
  Widget build(BuildContext context) {
    final testimoni = [
      {"nama": "Budi", "komentar": "Produk kopinya enak dan aromanya khas!"},
      {"nama": "Sinta", "komentar": "Batiknya halus dan motifnya elegan."},
      {"nama": "Rahma", "komentar": "Getuk gorengnya gurih banget!"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Testimoni Pelanggan')),
      body: ListView.builder(
        itemCount: testimoni.length,
        itemBuilder: (context, index) {
          final item = testimoni[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text(item['nama']!),
              subtitle: Text(item['komentar']!),
            ),
          );
        },
      ),
    );
  }
}
