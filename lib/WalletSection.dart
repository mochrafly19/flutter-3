import 'package:flutter/material.dart';

class WalletSection extends StatelessWidget {
  const WalletSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          WalletCard(),
          SizedBox(width: 8),
          WalletCard(),
        ],
      ),
    );
  }
}

class WalletCard extends StatelessWidget {
  const WalletCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Wallet",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 8),
          Text(
            "\$1357.00",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "/usd",
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActionButton(icon: Icons.arrow_downward, label: "Deposit"),
              ActionButton(icon: Icons.arrow_upward, label: "Withdraw"),
              ActionButton(icon: Icons.more_horiz, label: "More"),
            ],
          ),
        ],
      ),
    );
  }
}

// Reusable Widget for Action Button
class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const ActionButton({Key? key, required this.icon, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: Icon(icon, color: Colors.blue),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
