import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_style.dart';
import '../utils/app_icons.dart';

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
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.borderGrey),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Provider image
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 140,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: double.infinity,
                  height: 140,
                  color: Colors.grey.shade100,
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.white,
                  ),
                );
              },
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
                        style: AppTextStyle.lisuBosaRegular(
                            size: 12, weight: FontWeight.w600),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (isVerified)
                      Container(
                        margin: const EdgeInsets.only(left: 4),
                        child: SvgPicture.asset(
                          AppIcons.checkIcon,
                          width: 14,
                          height: 14,
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
                  style:
                      AppTextStyle.caption.copyWith(color: AppColors.textGrey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 8),

                // Rating
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 14),
                    const SizedBox(width: 4),
                    Text(
                      '$rating',
                      style: AppTextStyle.caption.copyWith(
                        color: AppColors.textGrey,
                      ),
                    ),
                    Text(
                      ' ($reviews)',
                      style: AppTextStyle.caption.copyWith(
                        color: AppColors.textGrey,
                      ),
                    ),
                  ],
                ),

                // Removed the hug field as requested

                const SizedBox(height: 8),

                // Profession and jobs
                Row(
                  children: [
                    // Different style for profession based on whether it's the first card (highlighted) or not
                    isHighlighted
                        ? Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.lightGrey),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              profession,
                              style: AppTextStyle.caption.copyWith(
                                fontSize: 10,
                                color: AppColors.textGrey,
                              ),
                            ),
                          )
                        : Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: AppColors.backgroundColor,
                              border: Border.all(
                                color:
                                    AppColors.backgroundColor.withOpacity(0.6),
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              profession,
                              style: AppTextStyle.caption.copyWith(
                                fontSize: 10,
                                color: AppColors.textGrey,
                              ),
                            ),
                          ),
                    const SizedBox(width: 8),
                    // Different style for jobs based on whether it's the first card (highlighted) or not
                    isHighlighted
                        ? Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.lightGrey),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '$jobsCompleted Jobs',
                              style: AppTextStyle.caption.copyWith(
                                fontSize: 10,
                                color: AppColors.textGrey,
                              ),
                            ),
                          )
                        : Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 3),
                            decoration: BoxDecoration(
                              color: AppColors.backgroundColor,
                              border: Border.all(
                                color:
                                    AppColors.backgroundColor.withOpacity(0.6),
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '$jobsCompleted Jobs',
                              style: AppTextStyle.caption.copyWith(
                                fontSize: 10,
                                color: AppColors.textGrey,
                              ),
                            ),
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
