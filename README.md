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

TUGAS 9
1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
-> Kita perlu membuat model Dart karena model berfungsi sebagai representasi data yang rapi dan terstruktur. Saat Flutter mengambil JSON dari Django, datanya masih berupa Map biasa yang belum punya tipe jelas. Dengan model, kita bisa memastikan:
    - Setiap field punya tipe data pasti (String, int, bool, dll).
    - Mencegah error karena null atau field yang tidak sesuai tipe.
    - Kode lebih mudah di-maintain dan lebih mudah dibaca.
    - Bisa memanfaatkan fitur null-safety, sehingga aplikasi lebih aman dari crash.

Kalau kita langsung memakai Map<String, dynamic> tanpa model:
    - Validasi tipe jadi lemah, rawan error.
    - Debugging lebih sulit karena tidak ada struktur yang jelas. 
    - Rentan terjadi typo di key Map dan akan baru ketahuan saat runtime.
    - Kode jadi tidak rapi dan sulit dikelola, terutama jika field banyak.

2. Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
-> Package http
    - Digunakan untuk request biasa seperti GET atau POST.
    - Tidak menyimpan cookie secara otomatis.
    - Cocok untuk endpoint yang tidak memerlukan autentikasi.

    CookieRequest
    - Disediakan oleh package pbp_django_auth.
    - Menyimpan session cookie sehingga Django bisa mengenali user yang login.
    - Dipakai untuk fitur login, register, logout, dan request yang butuh autentikasi.
    - Menjamin setiap request ke Django membawa cookie session yang benar.

Perbedaan utama:
http → komunikasi umum tanpa autentikasi
CookieRequest → komunikasi yang membutuhkan session login (autentikasi Django)

3. Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
-> Karena CookieRequest menyimpan informasi login dan session cookie.
Jika setiap halaman membuat instance CookieRequest baru, maka:
    - Cookie session tidak terbawa → Django tidak mengenali user.
    - User dianggap logout setiap kali berpindah halaman.
    - Request ke endpoint yang butuh login akan gagal.

Dengan membagikan instance CookieRequest lewat Provider, seluruh widget akan memakai session yang sama, sehingga:
    - User tetap login saat berpindah-pindah halaman.
    - Data user tetap konsisten.
    - Autentikasi berjalan dengan benar.

4. Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
-> Flutter yang berjalan di emulator tidak bisa mengakses localhost secara langsung, sehingga kita perlu menambahkan 10.0.2.2 ke ALLOWED_HOSTS supaya Django mengizinkan akses dari emulator. Selain itu, kita harus mengaktifkan CORS agar Flutter diperbolehkan mengakses server Django, dan mengatur SameSite serta cookie supaya session bisa dikirim dan dikenali Django. Android juga perlu izin akses internet di AndroidManifest agar aplikasi bisa melakukan request ke server. Jika konfigurasi ini salah, Flutter tidak bisa login, tidak bisa mengambil data, atau request akan ditolak oleh Django karena dianggap tidak aman.

5. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
-> Ketika user memasukkan data di Flutter, data tersebut diambil dari form dan dikirim ke Django melalui HTTP atau CookieRequest. Django kemudian memproses request tersebut, misalnya menyimpan ke database atau mengambil data dari model. Setelah itu, Django membalas dalam bentuk JSON. Flutter menerima JSON tersebut, mengubahnya menjadi objek lewat model Dart, lalu menampilkan datanya di layar melalui widget. Jadi alurnya adalah: input → request → Django → JSON → model → tampilan Flutter.

6. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
-> Untuk register, Flutter mengirim data seperti username dan password ke Django. Django membuat akun baru dan mengembalikan respons apakah berhasil atau gagal. Untuk login, Flutter mengirim username dan password melalui CookieRequest. Jika benar, Django membuat session dan mengirim cookie ke Flutter. CookieRequest menyimpan cookie itu, dan Flutter menampilkan halaman menu karena user sudah login. Logout dilakukan dengan memanggil endpoint logout Django, Django menghapus session-nya, dan CookieRequest ikut menghapus cookie, sehingga user langsung keluar dari akun.

7. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
-> Pertama memastikan Django sudah ter-deploy dan endpoint JSON berfungsi. Setelah itu, saya membuat fitur register dan login di Flutter menggunakan CookieRequest agar autentikasi bisa berjalan. Lalu saya membuat model Dart yang sesuai dengan model Django supaya data JSON bisa dipetakan dengan rapi. Setelah model selesai, saya membuat halaman daftar item yang mengambil data dari endpoint Django dan menampilkan field seperti name, price, description, thumbnail, category, dan is_featured. Saya juga menambahkan halaman detail yang muncul saat salah satu item diklik. Selanjutnya, saya menambahkan fitur filter item berdasarkan user yang login dengan memanggil endpoint khusus. Setelah semua fitur selesai, saya memastikan semuanya terhubung dan berjalan dengan lancar.