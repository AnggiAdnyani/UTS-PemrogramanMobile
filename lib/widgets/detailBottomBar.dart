import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts/screens/cartpage.dart';

class detailBottomBar extends StatelessWidget {
  const detailBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color.fromARGB(
          255, 223, 215, 206), // Set warna latar belakang bottom bar
      child: SizedBox(
        width: double.infinity, // Set lebar sesuai dengan lebar widget induk
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Harga produk
            const Text(
              "Rp 60.000",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            // Tombol untuk memesan produk
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartView()));
              }, // Aksi saat tombol ditekan
              icon: const Icon(CupertinoIcons.cart_badge_plus,
                  color: Colors.white), // Icon tombol
              label: const Text(
                "Order Now", // Teks tombol
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                // Gaya tombol
                backgroundColor: MaterialStateProperty.all(
                    Colors.brown), // Warna latar belakang tombol
                padding: MaterialStateProperty.all(
                    const EdgeInsetsDirectional.symmetric(
                        vertical: 13, horizontal: 15)), // Padding tombol
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Bentuk tombol
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
