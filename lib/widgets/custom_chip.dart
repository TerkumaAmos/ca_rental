import 'package:flutter/material.dart';

class CustomChip extends StatefulWidget {
  final String? label;
  final String? imagePath;
  const CustomChip({super.key, required this.label, required this.imagePath});

  @override
  State<CustomChip> createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: 10,
      padding: EdgeInsets.all(8),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // More rounded corners
      ),
      //CircleAvatar
      label: Text(
        'All',
        style: TextStyle(fontSize: 16),
      ), //Text
    );
  }
}
