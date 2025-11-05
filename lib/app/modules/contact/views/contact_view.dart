import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kontak Kami')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Alamat:", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Jl. Soedirman No. 45, Banyumas, Jawa Tengah"),
            SizedBox(height: 8),
            Text("Telepon:", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("0812-3456-7890"),
            SizedBox(height: 8),
            Text("Email:", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("umkmbanyumas@gmail.com"),
            SizedBox(height: 16),
            Center(child: Icon(Icons.store, size: 80, color: Colors.brown)),
          ],
        ),
      ),
    );
  }
}
