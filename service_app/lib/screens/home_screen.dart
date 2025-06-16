import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_style.dart';
import '../widgets/service_card.dart';
import '../widgets/provider_card.dart';
import '../widgets/booking_item.dart';
import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                const SizedBox(height: 20),
                _buildServicesSection(),
                const SizedBox(height: 20),
                _buildTrendingProvidersSection(),
                const SizedBox(height: 20),
                _buildRecentBookingsSection(),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(currentIndex: 0),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.blue.shade200,
          child: const Icon(Icons.person, color: Colors.white, size: 30),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(
                    child: Text(
                      'Hello Chikezie ',
                      style: AppTextStyle.heading3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Text('👋', style: TextStyle(fontSize: 18)),
                ],
              ),
              Text(
                'Tap here for address',
                style: AppTextStyle.smallText.copyWith(
                  color: AppColors.primaryColor,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        const SizedBox(width: 4),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.headphones,
                color: AppColors.primaryColor,
                size: 18,
              ),
              const SizedBox(width: 2),
              Text(
                'Help',
                style: AppTextStyle.smallText.copyWith(
                  color: AppColors.redColor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 4),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(6),
          child: const Icon(
            Icons.notifications_outlined,
            size: 16,
          ),
        ),
      ],
    );
  }

  Widget _buildServicesSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Services', style: AppTextStyle.heading2),
                Text(
                  'See More',
                  style: AppTextStyle.link.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                ServiceCard(
                  icon: 'local_laundry_service',
                  title: 'Dry cleaning & Laundry',
                ),
                const SizedBox(width: 12),
                ServiceCard(
                  icon: 'plumbing',
                  title: 'Plumbing & Piping',
                ),
                const SizedBox(width: 12),
                ServiceCard(
                  icon: 'cleaning_services',
                  title: 'Cleaning & House Keeping',
                ),
                const SizedBox(width: 12),
                ServiceCard(
                  icon: 'hvac',
                  title: 'HVAC Services',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrendingProvidersSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Trending Providers', style: AppTextStyle.heading2),
                Text(
                  'See More',
                  style: AppTextStyle.link.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                ProviderCard(
                  image: 'assets/images/worker1.png',
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
                const SizedBox(width: 12),
                ProviderCard(
                  image: 'assets/images/worker2.png',
                  name: 'Ojukwu Chikezie',
                  isVerified: true,
                  isMedal: true,
                  rating: 4.0,
                  reviews: 10,
                  location: 'Magodo, Lagos State',
                  profession: 'Barber',
                  jobsCompleted: 150,
                ),
                const SizedBox(width: 12),
                ProviderCard(
                  image: 'assets/images/worker3.png',
                  name: 'Ojukwu Chikezie',
                  isVerified: true,
                  isMedal: true,
                  rating: 4.0,
                  reviews: 10,
                  location: 'Magodo, Lagos State',
                  profession: 'Barber',
                  jobsCompleted: 150,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecentBookingsSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Bookings', style: AppTextStyle.heading2),
                Text(
                  'See More',
                  style: AppTextStyle.link.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: BookingItem(
              service: 'Carpenter Booking',
              date: 'Nov 14, 12:40 a.m',
              price: '₦12,000',
              status: 'cancelled',
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: BookingItem(
              service: 'Carpenter Booking',
              price: '₦12,000',
              status: 'pending',
            ),
          ),
        ],
      ),
    );
  }
}
