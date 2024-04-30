import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // Fungsi build digunakan untuk membuat tata letak widget
    return Container(
      // Container untuk menampilkan App Bar di bagian atas halaman
      color: const Color.fromARGB(255, 253, 253, 253), // Warna latar belakang App Bar
      padding: const EdgeInsets.all(5), // Padding di dalam Container
      child: Row(
        children: [
          // Baris untuk mengatur elemen-elemen secara horizontal
          Image.asset(
            // Menampilkan gambar logo
            'assets/images/logo lilin.jpg', // Lokasi gambar logo
            width: 50, // Lebar gambar
            height: 50, // Tinggi gambar
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15), // Margin horizontal
            padding: const EdgeInsets.symmetric(horizontal: 15), // Padding horizontal
            height: 50, // Tinggi kotak pencarian
            decoration: BoxDecoration(
              color: const Color.fromARGB(
                  255, 214, 197, 163), // Warna latar belakang kotak pencarian
              borderRadius: BorderRadius.circular(
                  30), // Border radius untuk membuat kotak bulat
            ),
            child: Row(
              // Baris untuk mengatur elemen-elemen secara horizontal
              children: [
                Container(
                  // Container untuk input teks
                  margin: const EdgeInsets.only(left: 5), // Margin kiri
                  height: 70, // Tinggi input teks
                  width: 140, // Lebar input teks
                  child: TextFormField(
                    // Widget untuk input teks
                    decoration: const InputDecoration(
                      border: InputBorder.none, // Tidak ada border
                      hintText: "Cari", // Hint text
                    ),
                  ),
                ),
                IconButton(
                  // Icon search
                  icon: const Icon(
                    Icons.search, // Menggunakan Icons.search dari Flutter
                    size: 17, // Ukuran icon
                    color: Color.fromRGBO(
                        6, 6, 6, 0.5), // Warna icon dengan opasitas
                  ),
                  onPressed: () {
                    // Navigator.push(context,
                    // MaterialPageRoute(builder: (context) => ItemsWidget()));
                    // Fungsi yang akan dijalankan ketika tombol ditekan
                    // Tambahkan kode yang ingin dieksekusi di sini
                  },
                ),
              ],
            ),
          ),

          const Spacer(), // Spacer digunakan untuk memberikan ruang kosong yang dinamis antara elemen
          Icon(
            // Icon untuk menu akun pengguna
            Icons.account_box, // Jenis ikon
            size: 40, // Ukuran ikon
            color: const Color.fromARGB(255, 8, 8, 8).withOpacity(0.5), // Warna ikon
          )
        ],
      ),
    );
  }
}
