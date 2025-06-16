import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_style.dart';

class ServiceCard extends StatelessWidget {
  final String icon;
  final String title;

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
  });

  IconData _getIconData() {
    switch (icon) {
      case 'local_laundry_service':
        return Icons.local_laundry_service;
      case 'plumbing':
        return Icons.plumbing;
      case 'cleaning_services':
        return Icons.cleaning_services;
      case 'hvac':
        return Icons.hvac;
      default:
        return Icons.home_repair_service;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Icon(
              _getIconData(),
              size: 40,
              color: AppColors.primaryColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyle.smallText,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
