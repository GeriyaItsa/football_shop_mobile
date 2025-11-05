# football_shop_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


TUGAS 7

1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
Struktur yang menggambarkan bagaimana widget-widget tersusun seperti sebuah pohon. Setiap elemen di aplikasi Flutter adalah widget, dan widget bisa berisi widget lain di dalamnya. Misalnya, sebuah Scaffold bisa menjadi parent (induk) dari AppBar dan Body, lalu di dalam Body bisa ada widget lain seperti Column, Row, Text, dan sebagainya. Hubungan parent-child berarti widget induk mengatur tata letak dan perilaku widget anak di dalamnya. Jadi, widget anak selalu berada di bawah kendali widget induknya dalam hal tampilan dan posisi.

2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
Widget yang saya gunakan dalam proyek ini MaterialApp, yang menjadi pembungkus utama aplikasi. Scaffold, sebagai kerangka dasar halaman dengan AppBar dan body. AppBar, untuk menampilkan judul di bagian atas. Text, untuk menampilkan tulisan. Column dan Row, untuk mengatur posisi widget secara vertikal dan horizontal. Container, untuk mengatur ukuran, warna, dan padding. ElevatedButton, untuk membuat tombol.

3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
Pondasi utama dari aplikasi Flutter yang menggunakan desain Material Design. Widget ini mengatur tema, navigasi antar halaman (route), serta pengaturan dasar seperti title dan home page. MaterialApp sering digunakan sebagai widget root karena dia menyediakan konteks global bagi seluruh widget di bawahnya agar bisa menggunakan fitur-fitur Material Design seperti tombol, warna, dan transisi antar halaman dengan mudah.

4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
StatelessWidget adalah widget yang tidak bisa berubah setelah dibuat. Artinya, tampilannya tetap sama karena tidak memiliki state atau data yang bisa berubah. Sedangkan StatefulWidget bisa berubah karena memiliki state internal. Misalnya, ketika pengguna menekan tombol dan tampilan berubah (seperti menambah angka pada counter), itu membutuhkan StatefulWidget. 

Jadi, kalau tampilanny tidak bergantung pada perubahan data, gunakan StatelessWidget. tapi kalau butuh memperbarui tampilan secara dinamis, gunakan StatefulWidget.

5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
Objek yang menyimpan informasi tentang posisi widget dalam widget tree. Ia penting karena digunakan untuk mengakses data dari widget lain yang lebih tinggi di tree, seperti tema, ukuran layar, atau navigasi. Dalam metode build, BuildContext selalu diberikan sebagai parameter agar widget tahu di mana posisinya dan bisa “berinteraksi” dengan parent atau widget di atasnya.

Contohnya, saat mau pindah halaman dengan Navigator.push(context, route), butuh BuildContext untuk menentukan halaman mana yang sedang aktif.

6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
Hot reload di Flutter adalah fitur yang memungkinkan developer melihat perubahan kode secara langsung tanpa harus menjalankan ulang seluruh aplikasi. Flutter hanya memperbarui bagian kode yang diubah, jadi hasilnya cepat muncul di emulator atau perangkat. Sementara hot restart memulai ulang aplikasi dari awal, menghapus semua state yang sudah ada. Hot reload cocok untuk mengubah tampilan atau teks kecil dengan cepat, kalau hot restart digunakan ketika ada perubahan besar yang memengaruhi state awal aplikasi.