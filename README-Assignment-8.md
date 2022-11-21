# PBP Assignment 8 - *Flutter Form*

> Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh 
> Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

**Nama  : Wayan Angga Putra Aldita**

**NPM   : 2106650065**

**Kelas : C**

## Perbedaan `Navigator.push` dan `Navigator.pushReplacement`
`push` menumpuk route teratas sebelumnya dengan widget baru, sedangkan `pushReplacement` menggantikan route teratas sebelumnya dengan widget baru. Penggunaan `push` pada navigator *tidak menghapus widget sebelumnya*, melainkan hanya *ditumpuk* dengan widget baru, sedangkan `pushReplacement` *menggantikan widget sebelumnya* dengan widget baru.

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

## Jenis-jenis event pada Flutter
- `onPressed`
- `onLongPress`
- `onHover`
- `onFocusChange`
- `onFocusChange`
- `onTap`

## Cara kerja Navigator
Widget `Navigator` bekerja dengan menampilkan screen teratas pada stack of route dengan memperhatikan method yang digunakan pada object `Navigator`. Dalam melakukan navigasi ke layar baru, `BuildContext` yang menyimpan route widget akan diakses oleh Navigator dengan menggunakan method pada class Navigator seperti `push()`, `pop()`, `pushReplacement()`, dan lain-lain.

## Pengimplementasian Checklist
- Membuat sebuah halaman baru bernama *BudgeteList* dan *BudgetForm*
- Membuat sebuah custom `Drawer` widget dengan menerapkan *seperation concern by refactoring* untuk ditampilkan di tiap halaman
- Set up navigasi halaman pada `Drawer`
- Membuat global List yang terletak pada root widget untuk menyimpan object Budget
- Implementasi halaman form dengan beberapa widget `TextFormField`, `DatePicker`, dan `DropdownMenu` 
- Menambahkan package external Intl untuk date formating
- Handling Save button untuk menyimpan transaksi baru ke dalam global List
- Menampilkan semua object Budget dengan custom BudgetCard widget dengan melakukan iterasi melalui `ListView.builder`