import 'package:car_rental_app/core/app_colors.dart';
import 'package:car_rental_app/models/text_field_widget.dart';
import 'package:flutter/material.dart';

class FoodPractice extends StatelessWidget {
  const FoodPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFieldWidget(
                hintText: 'Sushi',
                prefixIcon: const Icon(Icons.search, color: AppColors.primary),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 20 : 10,
                      right: 10,
                    ),
                    child: OfferCard(
                      title: 'New Year Offer',
                      subtitle: 'Enjoy 20% 0ff on all Korean rice',
                      image: 'assets/rice1.png',
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const OfferCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 150, // Match the parent SizedBox height
      decoration: BoxDecoration(
        color: Colors.red[400],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(12.0), // Reduced padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18, // Reduced font size
                    ),
                  ),
                  const SizedBox(height: 4), // Reduced spacing
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ), // Reduced font size
                  ),
                  const SizedBox(height: 8), // Reduced spacing
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10, // Reduced padding
                        vertical: 2, // Reduced padding
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.receipt_long,
                      size: 16,
                    ), // Reduced icon size
                    label: const Text(
                      'Order Now',
                      style: TextStyle(fontSize: 12),
                    ), // Reduced font size
                  ),
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            child: Image.asset(image, width: 80, height: 80, fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
