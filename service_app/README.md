# Service App

A Flutter mobile app test project.

## Description

This is a single-page Flutter application that demonstrates UI implementation skills. The app shows a service marketplace with categories, trending providers, and recent bookings.

## Requirements

- Flutter SDK
- Dart
- Required fonts: Lato and Lisu Bosa

## Features

- Home screen with service categories
- Trending service providers
- Recent bookings section
- Bottom navigation bar

## File Structure

```
service_app/
├── lib/
│   ├── main.dart                   # Main application entry
│   ├── screens/
│   │   └── home_screen.dart        # Home screen implementation
│   ├── widgets/
│   │   ├── service_card.dart       # Service category card
│   │   ├── provider_card.dart      # Service provider card
│   │   ├── booking_item.dart       # Booking list item
│   │   └── bottom_nav_bar.dart     # Custom bottom navigation
│   └── utils/
│       ├── app_colors.dart         # Color constants
│       ├── app_text_style.dart     # Text styles
│       ├── app_icons.dart          # Icon assets paths
│       └── app_images.dart         # Image assets paths
├── assets/
│   ├── fonts/                      # Font files
│   ├── images/                     # Image assets
│   └── icons/                      # Icon assets
└── pubspec.yaml                    # Project configuration
```

## Implementation Notes

- Primary color: `#9C28B1`
- Background color: `#FCF6FD`
- Error color: `#BF0303`
- Fonts: Lato and Lisu Bosa

## Next Steps

1. Replace placeholder assets with actual images and icons
2. Add font files in the assets/fonts directory
3. Implement additional screens as needed

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
