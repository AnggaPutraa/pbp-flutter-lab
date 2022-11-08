
# PBP Assignment 7 - *Elemen Dasar Flutter*

> Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh 
> Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

**Nama  : Wayan Angga Putra Aldita**
**NPM   : 2106650065**
**Kelas : C**

## Perbedaan stateless widget dan stateful widget
Stateless widget merupakan widget yang bersifat statis di mana seluruh konten yang dimuat di awal tidak dapat dibuah setelah diinisialisasikan. Sedangkan, Stateful widget merupakan widget yang bersifat dinamis di mana seluruh konten yang dimuat di awal dapat berubah-ubah dengan memperhatikan state.

## Widget yang digunakan dan fungsinya
- `MaterialApp`, berfungsi untuk menambahkan default theme ke children widget
- `Scaffold`, untuk mengimplementasikan struktur umum material layout design
- `Appbar`, salah satu bagian dari struktur umum maetrial layout design untuk menampilkan konten pada bagian atas aplikasi 
- `Text`, berfungsi untuk menampilkan text
- `Column`, berfungsi untuk megatur layout widget secara perspektif vertikal
- `Row`, berfungsi untuk menatur layout widget secara perspektif horizontal
- `Pading`, berufngsi untuk memebrikan jarak pada widget
- `SizedBox`, berfungsi untuk membuat sebuah box dengan size tertentu (default 0 x 0)

## Fungsi dan dampak `setState()`
`setState()` berfungsi untuk memberitahu suatu stateful widget bahwa terdapat perubahan pada state sehingga aplikasi akan memuat ulang widget tersebut dengan value yang baru. Pada assignment ini `setState()` berdampak pada tampilan value variabel _counter pada layar serta menampilkan decrement floating action button pada state _counter > 0.

## Perbedaan const *const* dan *final*
Const merupakan *modifier variable* dari sebuah value, di mana value yang ditetapkan bernilai konstan atau tetap. Deklarasi dengan const memerlukan value saat *compile time*. Sedangkan *final* merupakan *modifer variable* yang membuat reference menjadi tetap, namun valuenya bisa berubah-ubah, serta nilai dari variable yang dideklarasikan secara final tidak perlu diketahui saat *compile time*.
