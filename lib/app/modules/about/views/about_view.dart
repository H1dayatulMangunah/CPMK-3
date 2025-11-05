import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Toko')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset("assets/images/toko.jpg", height: 200, fit: BoxFit.cover),
            const SizedBox(height: 16),
            const Text(
              "UMKM Banyumas Jaya adalah toko lokal yang berfokus pada produk-produk unggulan daerah seperti kopi, batik, dan makanan khas. "
                  "Kami berkomitmen mendukung pengrajin dan petani lokal untuk meningkatkan kesejahteraan ekonomi masyarakat.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
