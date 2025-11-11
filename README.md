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

TUGAS 8

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
jawab = Navigator.push() digunakan untuk berpindah ke halaman baru tanpa menghapus halaman sebelumnya. Jadi, halaman lama masih tersimpan di tumpukan (stack) dan bisa kembali ke sana dengan tombol “back”. Contohnya, saat pengguna dari Menu Utama ingin menambah produk, maka kita bisa pakai Navigator.push() supaya setelah selesai, dia bisa balik lagi ke menu utama. 

Sedangkan Navigator.pushReplacement() digunakan untuk mengganti halaman saat ini dengan halaman baru, jadi halaman sebelumnya dihapus dari stack. Ini cocok dipakai kalau kita nggak mau pengguna kembali ke halaman lama. Contohnya, setelah login berhasil, kita bisa pakai Navigator.pushReplacement() untuk langsung ke halaman utama, biar pengguna nggak bisa balik ke halaman login lagi.

2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
jawab = Saya memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membuat struktur halaman yang konsisten di seluruh aplikasi Football Shop. Scaffold berfungsi sebagai kerangka utama yang menampung semua bagian halaman seperti AppBar, Drawer, dan body. AppBar saya gunakan untuk menampilkan judul halaman agar pengguna tahu sedang berada di halaman apa. Sedangkan Drawer digunakan sebagai menu navigasi samping agar pengguna bisa berpindah antarhalaman dengan mudah, seperti dari halaman utama ke halaman tambah produk atau daftar produk. Dengan ini, tampilan setiap halaman menjadi seragam dan mudah dipahami.

3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
jawab = 
    1. Padding
        Kelebihan: Memberikan jarak/spacing antara elemen form dan tepi layar, membuat tampilan lebih rapi dan nyaman dibaca.
        Contoh dari aplikasi: Di halaman "Create Product", saya menggunakan Padding untuk memberikan margin di sekitar form input sehingga tidak bersentuhan langsung dengan tepi layar.

    2. SingleChildScrollView
        Kelebihan: Memungkinkan form yang panjang untuk di-scroll ketika konten melebihi ukuran layar, mencegah overflow error.
        Contoh dari aplikasi: Halaman form tambah produk menggunakan SingleChildScrollView agar semua field input (nama, harga, deskripsi, gambar) bisa di-scroll dengan smooth tanpa membuat error.

    3. ListView
        Kelebihan: Ideal untuk menampilkan daftar item yang panjang dengan performa optimal karena hanya me-render item yang terlihat di layar.
        Contoh dari aplikasi: Halaman "All Products" menggunakan ListView untuk menampilkan daftar semua produk sepatu sehingga meski ada banyak produk, aplikasi tetap responsif.

4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
jawab = Saya menyesuaikan warna tema aplikasi Football Shop dengan mendefinisikan color palette yang konsisten di dalam ThemeData pada MaterialApp. Saya menggunakan warna biru sebagai primary color untuk mencerminkan brand toko, warna merah sebagai secondary color untuk aksen dan tombol penting seperti "Create Product", serta warna netral untuk background. Dengan mengatur theme di level MaterialApp, semua widget Material Design seperti AppBar, ElevatedButton, Card, dan elemen lainnya otomatis menggunakan warna brand yang sama di seluruh halaman tanpa perlu didefinisikan berulang kali. Pendekatan ini memastikan identitas visual Football Shop konsisten, profesional, dan mudah dikenali oleh pengguna.