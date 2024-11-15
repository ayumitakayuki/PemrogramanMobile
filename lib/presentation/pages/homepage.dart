import 'package:flutter/material.dart';
import 'package:uts_pemmob/presentation/pages/profilepagewithassets.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      'image': 'assets/images/buah1.png',
      'title': 'Kiwi',
      'price': 'Rp 31.500 /kg',
      'description': 'Kiwi dengan rasa manis dan segar, kaya vitamin C.',
      'origin': 'Asal: California, USA',
    },
    {
      'image': 'assets/images/buah2.png',
      'title': 'Melon Jepang',
      'price': 'Rp 34.900/kg',
      'description': 'Melon manis dengan tekstur renyah, kaya antioksidan.',
      'origin': 'Asal: Jepang',
    },
    {
      'image': 'assets/images/buah3.png',
      'title': 'Pepaya Mandarin',
      'price': 'Rp 25.000 /kg',
      'description': 'Pepaya dengan kulit mudah dikupas, cocok untuk camilan.',
      'origin': 'Asal: Tiongkok',
    },
    {
      'image': 'assets/images/buah4.png',
      'title': 'Apel Fuji',
      'price': 'Rp 40.000 /kg',
      'description': 'Apel manis dengan rasa segar, kaya serat.',
      'origin': 'Asal: Jepang',
    },
    {
      'image': 'assets/images/buah5.png',
      'title': 'Semangka Cavendish',
      'price': 'Rp 20.000 /kg',
      'description': 'Semangka dengan rasa manis dan tekstur lembut.',
      'origin': 'Asal: Indonesia',
    },
    {
      'image': 'assets/images/buah6.png',
      'title': 'Durian King',
      'price': 'Rp 50.000 /kg',
      'description': 'Durian harum dan manis, kaya vitamin A.',
      'origin': 'Asal: Malaysia',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FRESH FRUIT',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pinkAccent, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            // Welcome Text with Box
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Text(
                  'Welcome to the BIGGEST Fresh Fruit Distributor!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePageWithAssets(),
                    ),
                  );
                },
                child: Text(
                  'DAFTAR AGEN',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset(
                              product['image']!,
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              product['title']!,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            product['price']!,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              product['description']!,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            product['origin']!,
                            style: TextStyle(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
