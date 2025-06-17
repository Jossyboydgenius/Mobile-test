import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_style.dart';
import '../utils/app_icons.dart';
import '../utils/app_images.dart';
import '../widgets/service_card.dart';
import '../widgets/provider_card.dart';
import '../widgets/booking_item.dart';
import '../widgets/bottom_nav_bar.dart';
import 'all_services_screen.dart';
import 'all_providers_screen.dart';
import 'all_bookings_screen.dart';

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
                _buildHeader(context),
                const SizedBox(height: 20),
                _buildServicesSection(context),
                const SizedBox(height: 20),
                _buildTrendingProvidersSection(context),
                const SizedBox(height: 20),
                _buildRecentBookingsSection(context),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(currentIndex: 0),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(AppImages.profileImage),
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
                      style: AppTextStyle.latoBold(
                          size: 18, weight: FontWeight.w800),
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
              ),
            ],
          ),
        ),
        const SizedBox(width: 20), // Give more space
        SvgPicture.asset(
          AppIcons.customerHelpIcon,
          width: 32,
          height: 32,
        ),
        const SizedBox(width: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          padding: const EdgeInsets.all(6),
          child: SvgPicture.asset(
            AppIcons.notificationIcon,
            width: 16,
            height: 16,
            colorFilter: const ColorFilter.mode(
              AppColors.black,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildServicesSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Services',
                  style: AppTextStyle.latoBold(
                    size: 20,
                    weight: FontWeight.w700,
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllServicesScreen(),
                    ),
                  );
                },
                child: Text(
                  'See More',
                  style: AppTextStyle.latoBold(
                    size: 14,
                    color: AppColors.primaryColor,
                  ),
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
                icon: AppIcons.washingMachineIcon,
                title: 'Dry cleaning & Laundry',
              ),
              const SizedBox(width: 12),
              ServiceCard(
                icon: AppIcons.plumbingIcon,
                title: 'Plumbing & Piping',
              ),
              const SizedBox(width: 12),
              ServiceCard(
                icon: AppIcons.cleaningIcon,
                title: 'Cleaning & House Keeping',
              ),
              const SizedBox(width: 12),
              ServiceCard(
                icon: AppIcons.hvacIcon,
                title: 'HVAC Services',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTrendingProvidersSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Trending Providers',
                  style: AppTextStyle.latoBold(
                    size: 20,
                    weight: FontWeight.w700,
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllProvidersScreen(),
                    ),
                  );
                },
                child: Text(
                  'See More',
                  style: AppTextStyle.latoBold(
                    size: 14,
                    color: AppColors.primaryColor,
                  ),
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
              const SizedBox(width: 12),
              ProviderCard(
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
              const SizedBox(width: 12),
              ProviderCard(
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
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRecentBookingsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Recent Bookings',
                  style: AppTextStyle.latoBold(
                    size: 20,
                    weight: FontWeight.w700,
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllBookingsScreen(),
                    ),
                  );
                },
                child: Text(
                  'See More',
                  style: AppTextStyle.latoBold(
                    size: 14,
                    color: AppColors.primaryColor,
                  ),
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
            date: 'Nov 14, 12:40 a.m',
            price: '₦12,000',
            status: 'pending',
          ),
        ),
      ],
    );
  }
}
