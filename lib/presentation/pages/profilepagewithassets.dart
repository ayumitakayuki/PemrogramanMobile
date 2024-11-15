import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePageWithAssets(),
    );
  }
}

class ProfilePageWithAssets extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    {
      'date': '21 July 2024',
      'title': 'Agen Bandung',
      'image': 'assets/images/poto1.png',
      'items': 'SKIZOBAN',
      'quantity': '30kg Buah',
      'total': 'Rp 3.400.000',
    },
    {
      'date': '21 June 2024',
      'title': 'Agen Bogor',
      'image': 'assets/images/poto2.png',
      'items': 'BOGORIZZ',
      'quantity': '50kg Buah',
      'total': 'Rp 4.210.000',
    },
    {
      'date': '9 May 2024',
      'title': 'Agen Tangerang',
      'image': 'assets/images/poto3.png',
      'items': 'RANTAN',
      'quantity': '20kg Buah',
      'total': 'Rp 2.300.000',
    },
    {
      'date': '5 February 2024',
      'title': 'Agen Palembang',
      'image': 'assets/images/poto4.png',
      'items': 'STARBIN',
      'quantity': '80kg Buah',
      'total': 'Rp 5.200.000',
    },
    {
      'date': '1 January 2024',
      'title': 'Agen Banyumas',
      'image': 'assets/images/poto5.png',
      'items': 'ORANGARING',
      'quantity': '70kg Buah',
      'total': 'Rp 4.900.000',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DAFTAR AGEN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white, // White text for contrast
          ),
        ),
        backgroundColor: Colors.pink, // Pink background for AppBar
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Color(0xFFFFE4E1), // Baby pink background color
        child: ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            final transaction = transactions[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header Transaksi
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.local_shipping, color: Colors.green),
                              SizedBox(width: 8),
                              Text(
                                'Agen Distributor',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            transaction['date'],
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      // Detail Produk
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            transaction['image'],
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  transaction['title'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  transaction['items'],
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      // Informasi Jumlah dan Total Belanja
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jumlah Belanja:',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            transaction['quantity'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Belanja:',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            transaction['total'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
