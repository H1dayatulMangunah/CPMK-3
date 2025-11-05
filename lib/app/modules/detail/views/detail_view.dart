import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final String title;
  final String image;
  final String desc;

  const DetailView({
    super.key,
    this.title = "Detail Produk",
    this.image = "assets/images/kopi.jpg",
    this.desc = "Deskripsi produk tidak tersedia.",
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image, height: 220, fit: BoxFit.cover),
            const SizedBox(height: 16),
            Text(title,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(desc, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            const Text("Harga: Rp 45.000",
                style: TextStyle(fontSize: 18, color: Colors.brown)),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
                label: const Text("Pesan Sekarang"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
