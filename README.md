# mobile_app

A Flutter application demonstrating UI components, asset handling, and multi-platform support.

## Features

- **TestScreen** – A sample screen showcasing image rendering with both network and local assets
- **LoginPage** – A minimal login page placeholder for authentication flows
- **Asset Management** – Demonstrates loading images from the local `assets/` directory
- **Multi-Platform** – Supports Android, iOS, Linux, macOS, Windows, and Web

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (>= 3.11.1)
- A supported IDE (VS Code, Android Studio, or IntelliJ)

### Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd mobile_app
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

### Running Tests

```bash
flutter test
```

## Project Structure

```
lib/
├── main.dart                 # App entry point
└── src/
    ├── example/
    │   └── test_screen.dart  # Demo screen with image assets
    └── pages/
        ├── firstscreen.dart  # Initial screen example
        └── login/
            └── login_page.dart # Login page placeholder
assets/
├── p01.png ... p04.png       # Local image assets
└── *.jpg                     # Unsplash sample images
```

## Dependencies

- [flutter_spinkit](https://pub.dev/packages/flutter_spinkit) – Loading indicators
- [cupertino_icons](https://pub.dev/packages/cupertino_icons) – iOS-style icons

## Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Flutter Widget Catalog](https://docs.flutter.dev/ui/widgets)

## License

This project is for educational purposes.
