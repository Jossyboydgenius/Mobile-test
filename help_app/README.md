# Help App

A Flutter mobile app test project.

## Description

This is a single-page Flutter application that demonstrates UI implementation skills. The app shows a help marketplace with categories, trending providers, and recent bookings.

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
help_app/
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

---

# Mobile Test Project

A comprehensive Flutter development workspace containing the Help App - a mobile service marketplace application.

## 📱 Project Overview

This repository contains a Flutter mobile application test project that demonstrates modern mobile app development practices, UI/UX implementation skills, and cross-platform development capabilities.

## 📸 App Screenshots

Get a glimpse of the Help App's beautiful and intuitive interface:

<div align="center">
  <table>
    <tr>
      <td align="center">
        <img src="help_app/assets/images/screenshot1.png" width="250" alt="Home Screen"/>
        <br/>
        <b>🏠 Home Screen</b>
      </td>
      <td align="center">
        <img src="help_app/assets/images/screenshot2.png" width="250" alt="Service Categories"/>
        <br/>
        <b>🛠️ Service Categories</b>
      </td>
      <td align="center">
        <img src="help_app/assets/images/screenshot3.png" width="250" alt="Provider Listings"/>
        <br/>
        <b>👥 Provider Listings</b>
      </td>
    </tr>
    <tr>
      <td align="center">
        <img src="help_app/assets/images/screenshot4.png" width="250" alt="Booking Management"/>
        <br/>
        <b>📅 Booking Management</b>
      </td>
      <td align="center">
        <img src="help_app/assets/images/screenshot5.png" width="250" alt="Navigation"/>
        <br/>
        <b>🧭 Navigation</b>
      </td>
      <td align="center">
        <div style="display: flex; flex-direction: column; justify-content: center; align-items: center; height: 100%;">
          <h3>✨ Modern UI Design</h3>
          <p>Clean, intuitive, and responsive interface</p>
          <p>🎨 Custom color scheme</p>
          <p>📱 Cross-platform compatibility</p>
        </div>
      </td>
    </tr>
  </table>
</div>

---

## 🚀 Quick Start

### Prerequisites

Before running this project, ensure you have the following installed:

- **Flutter SDK** (latest stable version)
- **Dart SDK** (comes with Flutter)
- **Android Studio** or **VS Code** with Flutter extensions
- **Xcode** (for iOS development on macOS)
- **Git** for version control

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Jossyboydgenius/Mobile-test.git
   cd "Mobile test"
   ```

2. **Navigate to the app directory:**
   ```bash
   cd help_app
   ```

3. **Install dependencies:**
   ```bash
   flutter pub get
   ```

4. **Verify Flutter installation:**
   ```bash
   flutter doctor
   ```

5. **Run the application:**
   ```bash
   flutter run
   ```

## 📁 Project Structure

```
Mobile test/
├── help_app/                      # Main Flutter application
│   ├── lib/                       # Dart source code
│   │   ├── main.dart              # Application entry point
│   │   ├── screens/               # UI screens
│   │   ├── widgets/               # Reusable UI components
│   │   └── utils/                 # Utilities and constants
│   ├── assets/                    # Static assets
│   │   ├── fonts/                 # Font files
│   │   ├── images/                # Image assets
│   │   └── icons/                 # Icon assets
│   ├── android/                   # Android-specific code
│   ├── ios/                       # iOS-specific code
│   ├── web/                       # Web-specific code
│   ├── windows/                   # Windows-specific code
│   ├── macos/                     # macOS-specific code
│   ├── linux/                     # Linux-specific code
│   └── pubspec.yaml               # Project dependencies
├── .vscode/                       # VS Code configuration
├── .git/                          # Git repository data
└── README.md                      # This file
```

## 🎯 Help App Features

The Help App is a service marketplace application with the following features:

### Core Functionality
- **Service Categories:** Browse different service types (cleaning, plumbing, HVAC, laundry)
- **Provider Listings:** View trending service providers with ratings and pricing
- **Booking Management:** Track recent bookings and service history
- **Navigation:** Intuitive bottom navigation bar for easy app navigation

### Technical Features
- **Cross-Platform:** Runs on iOS, Android, Web, Windows, macOS, and Linux
- **Responsive Design:** Adaptive UI that works across different screen sizes
- **Custom Widgets:** Reusable components for consistent UI/UX
- **Asset Management:** Organized structure for images, icons, and fonts

## 🎨 Design System

### Color Palette
- **Primary Color:** `#9C28B1` (Purple)
- **Background Color:** `#FCF6FD` (Light Purple)
- **Error Color:** `#BF0303` (Red)

### Typography
- **Primary Font:** Lato
- **Secondary Font:** Lisu Bosa

### UI Components
- Custom service cards with icons and descriptions
- Provider cards with ratings and pricing
- Booking items with status indicators
- Custom bottom navigation bar

## 🛠️ Development

### Code Structure

The application follows a modular architecture:

- **`screens/`** - Contains the main UI screens
- **`widgets/`** - Reusable UI components
- **`utils/`** - Constants, colors, text styles, and asset paths

### Key Files

- **`main.dart`** - Application entry point and main configuration
- **`home_screen.dart`** - Main home screen implementation
- **`app_colors.dart`** - Color constants and theme definitions
- **`app_text_style.dart`** - Typography styles and text themes

### Building for Different Platforms

```bash
# Android
flutter build apk

# iOS
flutter build ios

# Web
flutter build web

# Windows
flutter build windows

# macOS
flutter build macos

# Linux
flutter build linux
```

## 📱 Supported Platforms

- ✅ **Android** (API 21+)
- ✅ **iOS** (iOS 11.0+)
- ✅ **Web** (Chrome, Safari, Firefox, Edge)
- ✅ **Windows** (Windows 10+)
- ✅ **macOS** (macOS 10.14+)
- ✅ **Linux** (Ubuntu, Fedora, etc.)

## 🔧 Configuration

### Android Configuration
- **Package Name:** `com.example.help_app`
- **Min SDK:** 21 (Android 5.0)
- **Target SDK:** Latest

### iOS Configuration
- **Bundle ID:** `com.example.helpApp`
- **Deployment Target:** iOS 11.0

## 📚 Resources

### Flutter Documentation
- [Flutter Official Documentation](https://docs.flutter.dev/)
- [Dart Programming Language](https://dart.dev/)
- [Flutter Cookbook](https://docs.flutter.dev/cookbook)

### Learning Resources
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter Widget Catalog](https://docs.flutter.dev/development/ui/widgets)
- [State Management](https://docs.flutter.dev/development/data-and-backend/state-mgmt)

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🔍 Troubleshooting

### Common Issues

1. **Flutter doctor issues:** Run `flutter doctor` and follow the suggested fixes
2. **Dependency conflicts:** Run `flutter clean` then `flutter pub get`
3. **iOS build issues:** Ensure Xcode is properly installed and updated
4. **Android build issues:** Check Android SDK and build tools are installed

### Getting Help

- Check the [Flutter documentation](https://docs.flutter.dev/)
- Visit [Flutter community](https://flutter.dev/community)
- Search [Stack Overflow](https://stackoverflow.com/questions/tagged/flutter)

