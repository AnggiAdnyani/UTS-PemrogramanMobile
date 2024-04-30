import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:uts/widgets/detailBottomBar.dart';
import 'package:uts/widgets/itemAppBar.dart';

class DetailPage2 extends StatelessWidget {
  const DetailPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set warna latar belakang halaman detail
      backgroundColor: const Color.fromARGB(255, 223, 215, 206),
      body: ListView(
        children: [
          // Widget untuk app bar pada halaman detail
          ItemAppBar(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Judul "Detail" di tengah-tengah halaman
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 1,
                      left: 10,
                      right: 10,
                    ), // Tambahkan padding kanan
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Detail",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Gambar di tengah-tengah halaman
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset("assets/images/lilin.jpg", height: 300),
                  ),
                ],
              ),
            ],
          ),
          // Judul produk di bagian bawah gambar
          const Padding(
            padding: EdgeInsets.only(top: 1, bottom: 5, left: 10),
            child: Row(
              children: [
                Text(
                  "Coffee", // Judul produk
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          // Rating produk
          Padding(
            padding: const EdgeInsets.only(top: 1, bottom: 20, left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Rating bar untuk menilai produk
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemSize: 20,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  onRatingUpdate: (index) {},
                ),
              ],
            ),
          ),
          // Deskripsi produk
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 1, left: 10),
            child: Row(
              children: [
                Text(
                  "Description", // Judul deskripsi produk
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          // Paragraf deskripsi produk
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Container(
              padding: const EdgeInsets.only(top: 0.1),
              child: const Text(
                "Coffee candle that has strong but soft scent of coffee good for when you had a long day.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      // Bottom navigation bar untuk navigasi tambahan
      bottomNavigationBar: detailBottomBar(),
    );
  }
}
