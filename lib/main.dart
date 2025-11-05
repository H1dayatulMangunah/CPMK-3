import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main_page.dart'; // Tambahkan baris ini
import 'package:aplikasi_umkm_lokal/app/routes/app_pages.dart';

void main() {
  runApp(const AplikasiUMKMLokal());
}

class AplikasiUMKMLokal extends StatelessWidget {
  const AplikasiUMKMLokal({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi UMKM Lokal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: const MainPage(), // arahkan ke MainPage
    );
  }
}
