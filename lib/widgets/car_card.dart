import 'package:flutter/material.dart';



class CarCard extends StatelessWidget {
  final String title;
  final String image;
  final double price;
  final String subtitle;
  const CarCard({super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return
      Container(

      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Car Title and Price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '\$$price',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          // Car Image
          Center(
            child: Image(
              image:AssetImage(image),
              height: 250,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 16),
          // Specs Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildSpecItem(
                icon: Icon(Icons.local_gas_station_rounded,color: Colors.grey,), // Replace with your icon
                label: 'Petrol',
              ),
              _buildSpecItem(
                icon: Icon(Icons.people,color: Colors.grey,), // Replace with your icon
                label: '4 Adults',
              ),
              _buildSpecItem(
                icon: Icon(Icons.speed,color: Colors.grey,), // Replace with your icon
                label: '301KM/h',
              ),
              _buildSpecItem(
                icon: Icon(Icons.car_repair,color: Colors.grey,), // Replace with your icon
                label: '4.0 VL',
              ),
              _buildSpecItem(
                icon: Icon(Icons.bolt,color: Colors.grey,), // Replace with your icon
                label: '503 Hp',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSpecItem({required Widget icon, required String label}) {
    return Column(
      children: [
        icon,
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}