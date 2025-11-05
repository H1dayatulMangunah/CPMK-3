import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_card.dart';
import '../../detail/views/detail_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        "title": "Kopi Banyumas",
        "image": "assets/images/kopi.jpg",
        "desc": "Kopi robusta khas pegunungan Banyumas dengan aroma kuat."
      },
      {
        "title": "Batik Sokaraja",
        "image": "assets/images/batik.jpg",
        "desc": "Motif klasik dengan pewarna alami dan kualitas tinggi."
      },
      {
        "title": "Getuk Goreng",
        "image": "assets/images/getuk.jpg",
        "desc": "Camilan manis khas Banyumas, renyah di luar lembut di dalam."
      },
      {
        "title": "Madu Kelengkeng",
        "image": "assets/images/madu.jpg",
        "desc": "Madu murni lokal dengan cita rasa khas bunga kelengkeng."
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Produk UMKM Lokal')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: products.map((p) {
            return InkWell(
              onTap: () => Get.to(() => DetailView(
                title: p['title']!,
                image: p['image']!,
                desc: p['desc']!,
              )),
              child: CustomCard(
                title: p['title']!,
                image: p['image']!,
                description: p['desc']!,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
