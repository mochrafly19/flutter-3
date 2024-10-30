import 'package:flutter/material.dart';
import 'ForYouSection.dart';
import 'PopularCryptosSection.dart';
import 'WalletSection.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'), // Ganti dengan image asset milikmu
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WalletSection(),
            SizedBox(height: 20),
            ForYouSection(),
            SizedBox(height: 20),
            PopularCryptosSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,color: Colors.black,), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.black,), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.link,color: Colors.black,), label: ""),
        ],
      ),
    );
  }
}
