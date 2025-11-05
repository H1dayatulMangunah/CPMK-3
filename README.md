# 🏪 Aplikasi UMKM Lokal

Aplikasi **UMKM Lokal** adalah proyek berbasis **Flutter + GetX** yang dikembangkan untuk mempromosikan produk-produk usaha mikro, kecil, dan menengah (UMKM) daerah.
Aplikasi ini menampilkan katalog produk lokal dalam bentuk grid, menyediakan informasi detail produk, testimoni pelanggan, deskripsi toko, serta kontak penjual.

Proyek ini dibuat sebagai latihan pengembangan aplikasi Flutter dengan struktur modular, penggunaan **Bottom Navigation Bar**, serta pemanfaatan navigasi **GetX**.

---

## 🚀 Fitur Utama

* **Home Page**
  Menampilkan daftar produk lokal menggunakan **GridView + Card**.
  Setiap produk memiliki gambar, nama, dan deskripsi singkat.

* **Detail Produk**
  Menampilkan informasi lengkap produk saat item diklik di halaman Home.

* **Testimoni Pelanggan**
  Menampilkan daftar ulasan dari pelanggan dalam bentuk list card.

* **Tentang Toko**
  Menjelaskan profil UMKM dan komitmen toko dalam mendukung produk lokal.

* **Kontak Toko**
  Menyediakan alamat, nomor telepon, dan email yang dapat dihubungi.

* **Navigasi Modern**
  Menggunakan **Bottom Navigation Bar** untuk berpindah antarhalaman (Home, Testimoni, Tentang, Kontak).

---

## 🧩 Struktur Proyek

```
lib/
├── main.dart                # Entry point aplikasi
├── main_page.dart           # Halaman utama dengan Bottom Navigation Bar
├── app/
│   ├── modules/
│   │   ├── home/views/home_view.dart
│   │   ├── detail/views/detail_view.dart
│   │   ├── testimoni/views/testimoni_view.dart
│   │   ├── about/views/about_view.dart
│   │   ├── contact/views/contact_view.dart
│   └── widgets/custom_card.dart   # Widget custom untuk tampilan produk
assets/
└── images/
    ├── kopi.jpg
    ├── batik.jpg
    ├── getuk.jpg
    ├── madu.jpg
    └── toko.jpg
```

---

## ⚙️ Instalasi dan Konfigurasi

1. **Pastikan Flutter sudah terpasang dengan benar**

   ```bash
   flutter doctor
   ```

   Jika muncul error seperti `flutter is not recognized`, pastikan PATH sudah berisi:

   ```
   C:\src\flutter\bin
   ```

2. **Clone atau buka project**

   ```bash
   cd C:\Users\Una\AndroidStudioProjects\aplikasi_umkm_lokal
   ```

3. **Ambil semua dependensi**

   ```bash
   flutter pub get
   ```

4. **Jalankan aplikasi**

   ```bash
   flutter run
   ```

---

## 📦 Dependensi Utama

Semua dependensi didefinisikan di `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.6
  cupertino_icons: ^1.0.8
```

Aset gambar terdaftar di:

```yaml
flutter:
  uses-material-design: true
  assets:
    - assets/images/
```

---

## 🧠 Penjelasan Teknis

* **GetX** digunakan untuk navigasi antarhalaman menggunakan:

  ```dart
  Get.to(() => DetailView(...));
  ```

  atau

  ```dart
  Get.toNamed('/about');
  ```

* **BottomNavigationBar** menggantikan Drawer sebagai menu utama untuk meningkatkan pengalaman pengguna.

* **CustomCard Widget** dibuat di file terpisah (`custom_card.dart`) agar kode lebih modular dan dapat digunakan ulang.

---

## 🪲 Troubleshooting

| Error                                  | Penyebab                                                     | Solusi                                                                                      |
| -------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------------------------------------- |
| `'flutter' is not recognized`          | PATH belum diarahkan ke Flutter SDK                          | Tambahkan `C:\src\flutter\bin` ke Environment Variables                                     |
| `Failed to start the Dart CLI isolate` | Cache Flutter rusak / dijalankan dari folder Downloads       | Pindahkan Flutter ke `C:\src\flutter`, lalu hapus `bin\cache` dan jalankan `flutter doctor` |
| `DevTools server start-up failure`     | Plugin Dart belum siap di Android Studio                     | Restart IDE dan pastikan plugin **Dart** dan **Flutter** aktif                              |
| `Asset not found: assets/images/...`   | Folder assets belum dibuat atau path salah di `pubspec.yaml` | Pastikan folder `assets/images/` berisi semua gambar produk                                 |

---

## 👨‍💻 Pengembang

**Nama:** Una
**Institusi:** Universitas Jenderal Soedirman
**Mata Kuliah:** Pemrograman Mobile / Flutter Development
**Framework:** Flutter SDK 3.35.7 + GetX 4.6.6

---

## 🏁 Kesimpulan

Aplikasi **UMKM Lokal** ini merupakan contoh penerapan Flutter yang sederhana namun fungsional, dengan fokus pada:

* Pemahaman struktur modular proyek Flutter
* Implementasi navigasi antarhalaman menggunakan GetX
* Penggunaan widget kustom dan aset lokal

Proyek ini dapat dikembangkan lebih lanjut dengan menambahkan fitur **keranjang belanja**, **autentikasi pengguna**, atau integrasi **database lokal (SQLite/Firebase)**.


#*NB: Loading ketika run yang cukup lama hingga 1,5 jam*
