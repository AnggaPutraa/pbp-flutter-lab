
# PBP Assignment 9 - *Web Service Integration*

> Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh 
> Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

**Nama  : Wayan Angga Putra Aldita**

**NPM   : 2106650065**

**Kelas : C**


## Pengambilan data JSON tanpa membuat model
Pengambilan data **JSON** tanpa membuat model dapat dilakukan. Secara behavioral, **JSON** sendiri merupakan suatu object dalam **notasi Javascirpt** di mana pada bahasa Dart, hal tersebut **ekuivalen** dengan **Map** di mana object yang terdiri dari *key* dengan *value pair*. Namun, pengambilan data JSON tanpa melakukan konversi ke dalam suatu model ***bukan merupakan best practice*** dalam pengimplementasiannya. Konversi data JSON ke dalam suatu model bertujuan untuk **meminimalisir kesalahan** pengambilan atau pengiriman data melalui http request yang akan ditampilkan pada sisi UI aplikasi.

## Widget yang digunakan dan fungsinya
- `Scaffold`, untuk mengimplementasikan struktur umum material layout design
- `AppBar`, salah satu bagian dari struktur umum maetrial layout design untuk menampilkan konten pada bagian atas
- `Text`, berfungsi untuk menampilkan text
- `Container`, berfungsi untuk membungkus suatu widget dan memberikan pading serta pading
- `Column`, berfungsi untuk megatur layout widget secara perspektif vertikal
- `Row`, berfungsi untuk menatur layout widget secara perspektif horizontal
- `Pading`, berufngsi untuk memebrikan jarak pada widget
- `Form`, container untuk mengelompokan form field
- `TextFormField`, sebuah form field yang menampung text field 
- `DropdownButton`, material design button untuk menampung list of item 
- `showDatePicker`, material design untuk menampilkan dialog date picker 
- `ListView.builder`, menggenerate *array of widget* yang *scrollable* 
- `ElevatedButton`, tombol build-in untuk mentrigger suatu event
- `Drawer`, menampilkan sebuah drawer dengan hamburger menu sebagai main icon
- `FutureBuilder`, widget untuk menggenerate array of widget berdasarkan suatu snapshot dengan memperhatikan teraksi snapshot terbaru
- `GestureDetector`, untuk mendeteksi gesture event

## Mekanisme pengambilan dan ekstraksi data JSON pada Flutter
- Membuat sebuah function **http request** dengan method `GET` secara *async* untuk mengambil data ke pihak eksternal
- Pada function tersebut lakukan parsing dengan `jsonDecode()` untuk mengubah response **String** menjadi **JSON**
- Konversi object  **JSON** ke dalam suatu **Model object**
- Gunakan widget `FutrueBuilder` untuk menampilkan widget-widget dengan snapshot data terbaru yang telah dikonversi menjadi sebuah object

## Pengimplementasian Checklist
- Membuat sebuah halaman baru bernama *WatchList* dan *WatchItemDetail*
- Membuat sebuah object baru bernama *WatchItem*
- Membuat sebuah remote data source bernama *WatchListRemoteDataSource*
- Membuat sebuah async function dengan return type `Future<List<WatchItem>>` pada *WatchListRemoteDataSource*
- Pada halaman *WatchList*, tambahkan sebuahh builder yaitu `FutureBuilder` untuk menampilkan hasil *GET* resquest pada url mywatchlist
- Tambahkan beberapa **conditional** sesuai kondisi *snapshot*, di mana terdiri dari *loading*, *has data*, dan *no data* 
- Pada **conditional** *has data*, tambahkan `GestureDetector` untuk mendeteksi click event dan menambahkan functional navigasi ke halaman *WacthItemDetail*
