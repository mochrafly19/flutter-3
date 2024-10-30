import 'package:flutter/material.dart';

class ForYouSection extends StatelessWidget {
  const ForYouSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "For You",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              FeatureButton(icon: Icons.book, label: "Learn crypto\nEarn crypto"),
              SizedBox(width: 10),
              FeatureButton(icon: Icons.timeline, label: "DCA Simulation"),
              SizedBox(width: 10),
              FeatureButton(icon: Icons.group, label: "Join Community"),
              SizedBox(width: 10),
              FeatureButton(icon: Icons.group, label: "Join Community"),
              SizedBox(width: 10),
              FeatureButton(icon: Icons.group, label: "Join Community"),
              SizedBox(width: 10),
              FeatureButton(icon: Icons.group, label: "Join Community"),
            ],
          ),
        ),
      ],
    );
  }
}

// Reusable Widget for Feature Button
class FeatureButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const FeatureButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey[200],
          child: Icon(icon, size: 30, color: Colors.blue),
        ),
        SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
