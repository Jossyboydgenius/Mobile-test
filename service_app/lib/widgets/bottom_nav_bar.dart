import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

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
              _buildNavItem(0, Icons.home, 'Home', currentIndex == 0),
              _buildNavItem(1, Icons.receipt, 'Bookings', currentIndex == 1),
              _buildNavItem(2, Icons.message, 'Messages', currentIndex == 2),
              _buildNavItem(3, Icons.person, 'Account', currentIndex == 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isActive ? AppColors.primaryColor : Colors.grey,
          size: 24,
        ),
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
