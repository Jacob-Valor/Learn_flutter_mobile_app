# Copilot Instructions

## Project
- This repository is a Flutter app named `mobile_app`.
- Main hand-authored code lives in `lib/` and `test/`.
- Source of truth files are `pubspec.yaml`, `analysis_options.yaml`, `lib/main.dart`, and `test/widget_test.dart`.
- Avoid editing generated files in `.dart_tool/`, `build/`, or generated platform registrants unless the task specifically requires it.

## Commands
- Install dependencies with `flutter pub get`.
- Analyze with `flutter analyze`.
- Format Dart code with `dart format lib test`.
- Run all tests with `flutter test`.
- Run one test file with `flutter test test/widget_test.dart`.
- Run one named test with `flutter test test/widget_test.dart --plain-name "Counter increments smoke test"`.
- Run the app locally with `flutter run`.
- Use the narrowest build target needed, such as `flutter build apk` or `flutter build web`.

## Code Style
- Follow `package:flutter_lints/flutter.yaml`; there are no project-specific lint overrides.
- Use 2-space indentation and let `dart format` handle layout.
- Prefer single quotes, trailing commas, `const`, and `final`.
- Use package imports for app code when crossing library boundaries.
- Use `PascalCase` for classes and widgets, `lowerCamelCase` for members, and a leading underscore for private symbols.
- Keep widgets declarative and extract smaller widgets when build methods become crowded.
- Use `StatefulWidget` only when local mutable UI state is required, and wrap updates in `setState`.

## Testing
- Use `flutter_test` and `testWidgets(...)` for widget coverage.
- Pump the widget tree before interacting with it.
- After UI changes, call `pump()` or `pumpAndSettle()` as needed.
- Assert visible behavior with `find` and `expect`.

## Workflow
- Make the smallest safe change that solves the task.
- Keep changes scoped to the files that matter; avoid unrelated refactors.
- Format touched Dart files, then run `flutter analyze` and the most relevant test command.
- Preserve existing platform behavior unless the task explicitly targets a platform runner or config file.
