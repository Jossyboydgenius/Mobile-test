import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_style.dart';
import '../widgets/booking_item.dart';

class AllBookingsScreen extends StatelessWidget {
  const AllBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Recent Bookings',
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
            BookingItem(
              service: 'Carpenter Booking',
              date: 'Nov 14, 12:40 a.m',
              price: '₦12,000',
              status: 'cancelled',
            ),
            const SizedBox(height: 12),
            BookingItem(
              service: 'Carpenter Booking',
              date: 'Nov 14, 12:40 a.m',
              price: '₦12,000',
              status: 'pending',
            ),
            const SizedBox(height: 12),
            BookingItem(
              service: 'Plumbing Booking',
              date: 'Nov 12, 10:30 a.m',
              price: '₦8,000',
              status: 'completed',
            ),
            const SizedBox(height: 12),
            BookingItem(
              service: 'Cleaning Booking',
              date: 'Nov 10, 09:15 a.m',
              price: '₦5,000',
              status: 'completed',
            ),
            const SizedBox(height: 12),
            BookingItem(
              service: 'HVAC Service Booking',
              date: 'Nov 5, 02:20 p.m',
              price: '₦15,000',
              status: 'cancelled',
            ),
          ],
        ),
      ),
    );
  }
}
