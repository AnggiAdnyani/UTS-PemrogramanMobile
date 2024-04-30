import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:uts/widgets/HomeAppBar.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HomeAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text("Order",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Color.fromARGB(255, 184, 133, 71),
                      )),
                  const SizedBox(height: 18.0),
                  const Cartitem(),
                  const Cartitem(),
                  const Cartitem(),
                  const SizedBox(height: 190.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Total",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      Text("Rp180,000",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ))
                    ],
                  ),
                  const SizedBox(height: 4.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Delivery Fee",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text("Rp20,000",
                          style: TextStyle(
                            fontSize: 14.0,
                          ))
                    ],
                  ),
                  const Divider(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Sub Total",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      Text("Rp200,000",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ))
                    ],
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 184, 133, 71),
                    height: 60.0,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      "Pay Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                ]),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        // Bottom navigation bar yang berbentuk melengkung
        backgroundColor: Colors.transparent, // Latar belakang transparan
        onTap: (index) {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => const HomePage()));
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

class Cartitem extends StatelessWidget {
  const Cartitem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 184, 133, 71),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.scaleDown,
                        image: NetworkImage(
                            "https://pebblely.com/ideas/candle/colored-background.jpg")),
                    borderRadius: BorderRadius.circular(20.0),
                  )),
            ),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    width: 100.0,
                    child: Text(
                      "Ocean Vibes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 184, 133, 71),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 15.0,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "1",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(243, 231, 219, 1),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Icon(
                            Icons.remove,
                            color: Colors.black,
                            size: 15.0,
                          )),
                      const Spacer(),
                      const Text(
                        "Rp60,000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
