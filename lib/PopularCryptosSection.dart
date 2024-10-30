import 'package:flutter/material.dart';

class PopularCryptosSection extends StatelessWidget {
  const PopularCryptosSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Popular Cryptos Header
        Text(
          "Popular Cryptos",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        // Scrollable List of Cryptos
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CryptoTile(name: "Bitcoin", code: "BTC/USD", price: "20174.45", change: "-3.15"),
              CryptoTile(name: "Ethereum", code: "ETH/USD", price: "1071.81", change: "+2.45"),
              CryptoTile(name: "Ripple", code: "XRP/USD", price: "0.45", change: "+1.25"),
              CryptoTile(name: "Litecoin", code: "LTC/USD", price: "145.78", change: "-0.95"),
              // Duplicate entries for demonstration, consider removing these
              CryptoTile(name: "Bitcoin", code: "BTC/USD", price: "20174.45", change: "-3.15"),
              CryptoTile(name: "Ethereum", code: "ETH/USD", price: "1071.81", change: "+2.45"),
              CryptoTile(name: "Ripple", code: "XRP/USD", price: "0.45", change: "+1.25"),
              CryptoTile(name: "Litecoin", code: "LTC/USD", price: "145.78", change: "-0.95"),
            ],
          ),
        ),
      ],
    );
  }
}

// Reusable Widget for Crypto Tile
class CryptoTile extends StatelessWidget {
  final String name;
  final String code;
  final String price;
  final String change;

  const CryptoTile({
    required this.name,
    required this.code,
    required this.price,
    required this.change,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.orange,
        child: Text(name[0], style: TextStyle(color: Colors.white)), // Displaying the initial of the crypto name
      ),
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(code),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("\$$price", style: TextStyle(fontSize: 16)),
          Text(
            "$change%",
            style: TextStyle(color: change.startsWith('-') ? Colors.red : Colors.green),
          ),
        ],
      ),
    );
  }
}
