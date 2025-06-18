import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_style.dart';
import '../utils/app_icons.dart';
import '../widgets/service_card.dart';

class AllServicesScreen extends StatelessWidget {
  const AllServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(
          'All Services',
          style: AppTextStyle.latoBold(size: 18),
        ),
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        padding: const EdgeInsets.all(16),
        childAspectRatio: 0.8,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: [
          ServiceCard(
              icon: AppIcons.washingMachineIcon,
              title: 'Dry cleaning & Laundry'),
          ServiceCard(icon: AppIcons.plumbingIcon, title: 'Plumbing & Piping'),
          ServiceCard(
              icon: AppIcons.cleaningIcon, title: 'Cleaning & House Keeping'),
          ServiceCard(icon: AppIcons.hvacIcon, title: 'HVAC Services'),
          ServiceCard(icon: AppIcons.washingMachineIcon, title: 'Electrician'),
          ServiceCard(icon: AppIcons.plumbingIcon, title: 'Carpenter'),
          ServiceCard(icon: AppIcons.cleaningIcon, title: 'Painter'),
          ServiceCard(icon: AppIcons.hvacIcon, title: 'Gardener'),
          ServiceCard(icon: AppIcons.washingMachineIcon, title: 'Security'),
        ],
      ),
    );
  }
}
