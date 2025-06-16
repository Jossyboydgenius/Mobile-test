import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_style.dart';

class BookingItem extends StatelessWidget {
  final String service;
  final String? date;
  final String price;
  final String status; // 'pending', 'completed', 'cancelled'

  const BookingItem({
    super.key,
    required this.service,
    this.date,
    required this.price,
    required this.status,
  });

  Color _getStatusColor() {
    switch (status.toLowerCase()) {
      case 'pending':
        return AppColors.primaryColor;
      case 'completed':
        return AppColors.successColor;
      case 'cancelled':
        return AppColors.redColor;
      default:
        return AppColors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      service,
                      style: AppTextStyle.latoBold(size: 16),
                    ),
                    if (date != null)
                      Text(
                        date!,
                        style: AppTextStyle.caption.copyWith(
                          color: AppColors.grey,
                        ),
                      ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      price,
                      style: AppTextStyle.latoBold(size: 16),
                    ),
                    Text(
                      status.capitalize(),
                      style: AppTextStyle.caption.copyWith(
                        color: _getStatusColor(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (status.toLowerCase() == 'pending')
            Container(
              height: 4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.primaryColor,
                    AppColors.primaryColor.withOpacity(0.7),
                    AppColors.primaryColor.withOpacity(0.3),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
