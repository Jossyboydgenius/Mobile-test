import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_style.dart';
import '../widgets/provider_card.dart';

class AllProvidersScreen extends StatelessWidget {
  const AllProvidersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Trending Providers',
          style: AppTextStyle.latoBold(size: 18),
        ),
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ProviderCard(
                    image: 'assets/images/image.png',
                    name: 'Ojukwu Chikezie',
                    isVerified: true,
                    isMedal: true,
                    rating: 4.0,
                    reviews: 10,
                    location: 'Magodo, Lagos State',
                    profession: 'Barber',
                    jobsCompleted: 150,
                    isHighlighted: true,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ProviderCard(
                    image: 'assets/images/image1.png',
                    name: 'Ojukwu Chikezie',
                    isVerified: true,
                    isMedal: true,
                    rating: 4.0,
                    reviews: 10,
                    location: 'Magodo, Lagos State',
                    profession: 'Barber',
                    jobsCompleted: 150,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ProviderCard(
                    image: 'assets/images/image2.png',
                    name: 'Ojukwu Chikezie',
                    isVerified: true,
                    isMedal: true,
                    rating: 4.0,
                    reviews: 10,
                    location: 'Magodo, Lagos State',
                    profession: 'Barber',
                    jobsCompleted: 150,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ProviderCard(
                    image: 'assets/images/image.png',
                    name: 'Ojukwu Chikezie',
                    isVerified: true,
                    isMedal: false,
                    rating: 4.0,
                    reviews: 10,
                    location: 'Magodo, Lagos State',
                    profession: 'Barber',
                    jobsCompleted: 150,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ProviderCard(
                    image: 'assets/images/image1.png',
                    name: 'Ojukwu Chikezie',
                    isVerified: true,
                    isMedal: true,
                    rating: 4.0,
                    reviews: 10,
                    location: 'Magodo, Lagos State',
                    profession: 'Barber',
                    jobsCompleted: 150,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ProviderCard(
                    image: 'assets/images/image2.png',
                    name: 'Ojukwu Chikezie',
                    isVerified: false,
                    isMedal: false,
                    rating: 4.0,
                    reviews: 10,
                    location: 'Magodo, Lagos State',
                    profession: 'Barber',
                    jobsCompleted: 150,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
