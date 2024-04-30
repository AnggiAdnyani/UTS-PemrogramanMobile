import 'package:curved_navigation_bar/curved_navigation_bar.dart'; // Import paket untuk curved navigation bar
import 'package:flutter/cupertino.dart'; // Import pustaka Cupertino untuk widget khusus iOS
import 'package:flutter/material.dart'; // Import pustaka Material untuk widget dasar
import 'package:uts/screens/cartpage.dart';
import 'package:uts/widgets/AllProduct.dart'; // Import widget AllProduct
import 'package:uts/widgets/ItemsWidget.dart'; // Import widget ItemsWidget
import '../widgets/HomeAppBar.dart'; // Import widget HomeAppBar

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Method build dipanggil untuk membuat tata letak halaman
    return Scaffold(
      // Scaffold digunakan sebagai kerangka utama halaman
      body: ListView(
        // ListView digunakan untuk mengatur konten utama yang dapat digulir
        children: [
          const HomeAppBar(), // Widget untuk app bar kustom
          Container(
            // Kontainer untuk konten utama halaman
            padding: const EdgeInsets.only(top: 15), // Padding di bagian atas
            decoration: const BoxDecoration(
              color: Colors.white, // Warna latar belakang putih
              borderRadius: BorderRadius.only(
                topLeft:
                    Radius.circular(25), // Border radius untuk sudut kiri atas
                topRight:
                    Radius.circular(25), // Border radius untuk sudut kanan atas
              ),
            ),
            child: Column(
              // Kolom untuk mengatur elemen-elemen secara vertikal
              children: [
                const SizedBox(height: 20), // Spasi vertikal
                const Text(
                  // Label "Most Liked"
                  "Most Liked",
                  style: TextStyle(
                    fontSize: 25, // Ukuran teks
                    fontWeight: FontWeight.bold, // Ketebalan teks
                    color: Color.fromARGB(255, 184, 133, 71), // Warna teks
                  ),
                ),
                ItemsWidget(), // Widget untuk menampilkan item-item yang disukai

                const SizedBox(height: 20), // Spasi vertikal
                const Text(
                  // Label "All Product"
                  "All Product",
                  style: TextStyle(
                    fontSize: 25, // Ukuran teks
                    fontWeight: FontWeight.bold, // Ketebalan teks
                    color: Color.fromARGB(255, 184, 133, 71), // Warna teks
                  ),
                ),
                const AllProduct(), // Widget untuk menampilkan semua produk
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        // Bottom navigation bar yang berbentuk melengkung
        backgroundColor: Colors.transparent, // Latar belakang transparan
        onTap: (index) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CartView()));
        }, // Fungsi yang dipanggil saat salah satu item navigasi diklik
        height: 70, // Tinggi bottom navigation bar
        color: const Color.fromARGB(
            255, 184, 133, 71), // Warna latar belakang bottom navigation bar
        items: const [
          // Daftar ikon yang mewakili setiap bagian dalam bottom navigation bar
          Icon(
            Icons.home,
            size: 30, // Ukuran icon
            color: Color.fromARGB(255, 255, 255, 255), // Warna icon
          ),
          Icon(
            CupertinoIcons.bag_fill,
            size: 30, // Ukuran icon
            color: Color.fromARGB(255, 255, 255, 255), // Warna icon
          ),
          Icon(
            Icons.notification_add,
            size: 30, // Ukuran icon
            color: Color.fromARGB(255, 251, 250, 250), // Warna icon
          ),
        ],
      ),
    );
  }
}
