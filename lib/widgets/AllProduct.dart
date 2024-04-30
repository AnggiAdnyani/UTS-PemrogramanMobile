import 'package:flutter/material.dart'; // Impor pustaka Material untuk widget

class AllProduct extends StatelessWidget {
  const AllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    // Fungsi build digunakan untuk membuat tata letak widget
    return GridView.count(
      // GridView digunakan untuk menampilkan daftar widget dalam grid
      childAspectRatio: 0.68, // Rasio aspek setiap child dalam grid
      physics: const NeverScrollableScrollPhysics(), // Memastikan grid tidak bisa digulir
      crossAxisCount: 2, // Jumlah widget dalam satu baris grid
      shrinkWrap: true, // Widget akan menyesuaikan ukurannya dengan kontennya
      children: [
        // Daftar widget yang akan ditampilkan dalam grid
        for (int i = 1; i < 5; i++)
          Container(
            // Container untuk setiap item produk
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10), // Padding atas, kiri, dan kanan
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 7), // Margin atas, bawah, kiri, dan kanan
            decoration: BoxDecoration(
              // Mendefinisikan dekorasi untuk container
              color: const Color.fromARGB(255, 214, 197, 163), // Warna latar belakang container
              borderRadius: BorderRadius.circular(20), // Membuat sudut container menjadi bulat
            ),
            child: Column(
              // Kolom untuk mengatur elemen-elemen secara vertikal
              children: [
                // Daftar elemen di dalam kolom
                const Row(
                  // Baris untuk mengatur elemen-elemen secara horizontal
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // Menyusun elemen secara rata di sepanjang sumbu horizontal
                  children: [
                    // Daftar elemen di dalam baris
                  ],
                ),
                InkWell(
                  // Widget untuk menangani ketika item ditekan
                  onTap: () {},
                  // Fungsi yang dipanggil saat item ditekan
                  child: Container(
                    // Container untuk menampilkan gambar produk
                    margin: const EdgeInsets.all(2), // Margin semua sisi
                    child: Image.asset(
                      // Menampilkan gambar dari aset
                      "assets/images/lilin.jpg", // Lokasi gambar
                      height: 120, // Tinggi gambar
                      width: 200, // Lebar gambar
                    ),
                  ),
                ),
                Container(
                  // Container untuk menampilkan judul produk
                  padding: const EdgeInsets.only(bottom: 8), // Padding bawah
                  alignment: Alignment.centerLeft, // Aligment ke kiri
                  child: const Text(
                    // Teks judul produk
                    "Ocean Vibes",
                    // Isi teks
                    style: TextStyle(
                      // Gaya teks
                      fontSize: 18, // Ukuran teks
                      color: Colors.brown, // Warna teks
                      fontWeight: FontWeight.bold, // Ketebalan teks
                    ),
                  ),
                ),
                Container(
                  // Container untuk menampilkan harga produk
                  alignment: Alignment.centerLeft, // Aligment ke kiri
                  child: const Text(
                    // Teks harga produk
                    "RP 60.000",
                    // Isi teks
                    style: TextStyle(
                      // Gaya teks
                      fontSize: 15, // Ukuran teks
                      fontWeight: FontWeight.bold, // Ketebalan teks
                      color: Colors.brown, // Warna teks
                    ),
                  ),
                ),
                Padding(
                  // Padding untuk memberi jarak di antara elemen-elemen
                  padding: const EdgeInsets.symmetric(vertical: 5), // Padding vertikal
                  child: ElevatedButton(
                    // Tombol untuk memesan produk
                    onPressed: () {
                      // Fungsi yang dipanggil saat tombol ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      // Mendefinisikan tampilan tombol
                      backgroundColor:
                          const Color.fromARGB(255, 250, 251, 242), // Warna latar belakang tombol
                      shape: RoundedRectangleBorder(
                        // Membuat tombol dengan sudut bulat
                        borderRadius: BorderRadius.circular(20), // Sudut bulat
                      ),
                    ),
                    child: const Text(
                      // Teks di dalam tombol
                      "+ Order Now",
                      // Isi teks
                      style: TextStyle(
                        // Gaya teks
                        fontSize: 15, // Ukuran teks
                        fontWeight: FontWeight.bold, // Ketebalan teks
                        color: Colors.brown, // Warna teks
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
