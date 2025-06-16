import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_style.dart';

class ProviderCard extends StatelessWidget {
  final String image;
  final String name;
  final bool isVerified;
  final bool isMedal;
  final double rating;
  final int reviews;
  final String location;
  final String profession;
  final int jobsCompleted;
  final String? hug;
  final bool isHighlighted;

  const ProviderCard({
    super.key,
    required this.image,
    required this.name,
    required this.isVerified,
    required this.isMedal,
    required this.rating,
    required this.reviews,
    required this.location,
    required this.profession,
    required this.jobsCompleted,
    this.hug,
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
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
        border: isHighlighted
            ? Border.all(
                color: AppColors.primaryColor.withOpacity(0.3), width: 1)
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Provider image placeholder
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Container(
              width: double.infinity,
              height: 140,
              color: image == 'assets/images/worker1.png'
                  ? Colors.redAccent.shade100
                  : (image == 'assets/images/worker2.png'
                      ? Colors.orange.shade100
                      : Colors.blue.shade100),
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Provider name and verification
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        name,
                        style: AppTextStyle.latoBold(size: 16),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (isVerified)
                      Container(
                        margin: const EdgeInsets.only(left: 4),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 12,
                        ),
                      ),
                    if (isMedal)
                      Container(
                        margin: const EdgeInsets.only(left: 4),
                        child: const Text('🏅', style: TextStyle(fontSize: 14)),
                      ),
                  ],
                ),

                // Location
                Text(
                  location,
                  style: AppTextStyle.caption.copyWith(color: AppColors.grey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 8),

                // Rating
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 16),
                    const SizedBox(width: 4),
                    Text('$rating', style: AppTextStyle.bodyText),
                    Text(
                      ' ($reviews)',
                      style:
                          AppTextStyle.caption.copyWith(color: AppColors.grey),
                    ),
                  ],
                ),

                if (hug != null) ...[
                  const SizedBox(height: 8),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      hug!,
                      style:
                          AppTextStyle.caption.copyWith(color: AppColors.white),
                    ),
                  ),
                ],

                const SizedBox(height: 8),

                // Profession and jobs
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.lightGrey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        profession,
                        style: AppTextStyle.caption,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '$jobsCompleted Jobs',
                      style:
                          AppTextStyle.caption.copyWith(color: AppColors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
