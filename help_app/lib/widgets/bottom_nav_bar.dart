import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/app_colors.dart';
import '../utils/app_icons.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.05),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildNavItem(0, AppIcons.homeIcon, 'Home', currentIndex == 0),
              _buildNavItem(
                  1, AppIcons.bookingsIcon, 'Bookings', currentIndex == 1),
              _buildNavItem(
                  2, AppIcons.messageIcon, 'Messages', currentIndex == 2),
              _buildNavItem(
                  3, AppIcons.profileIcon, 'Account', currentIndex == 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
      int index, String iconPath, String label, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isActive)
          Container(
            height: 3,
            width: 35,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(2)),
            ),
            margin: const EdgeInsets.only(bottom: 8),
          ),
        if (!isActive)
          const SizedBox(
              height: 11), // Compensate for the indicator height and margin
        SvgPicture.asset(
          iconPath,
          colorFilter: ColorFilter.mode(
            isActive ? AppColors.primaryColor : Colors.grey,
            BlendMode.srcIn,
          ),
          width: 24,
          height: 24,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isActive ? AppColors.primaryColor : Colors.grey,
            fontSize: 12,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
