# AGENTS.md

Guidance for coding agents working in this repository.

## Scope
- This repo is a Flutter application named `mobile_app`.
- The primary hand-authored Dart code currently lives in `lib/` and `test/`.
- Platform folders exist for `android/`, `ios/`, `linux/`, `macos/`, `web/`, and `windows/`.
- Treat generated Flutter platform files as generated unless the task clearly requires platform edits.
- Prefer the smallest safe change that solves the requested problem.

## Source Of Truth
- Dependencies and SDK constraints live in `pubspec.yaml`.
- Lint rules live in `analysis_options.yaml`.
- The app entrypoint is `lib/main.dart`.
- The current widget test lives in `test/widget_test.dart`.
- Flutter project metadata lives in `.metadata`; do not hand-edit it.

## Editor-Specific Rules
- No Cursor rules were found in `.cursor/rules/`.
- No `.cursorrules` file was found.
- No Copilot instructions were found in `.github/copilot-instructions.md`.
- Use this file as the agent-facing instruction set unless new editor-specific rules are added later.

## Repo Layout
- `lib/` contains application Dart code.
- `test/` contains automated Dart and Flutter tests.
- `web/` contains Flutter web shell assets.
- `android/`, `ios/`, `linux/`, `macos/`, and `windows/` contain platform runners.
- `build/` is generated output and should not be hand-edited.
- `.dart_tool/` is tool-generated and should not be hand-edited.

## Core Commands
- Install or refresh dependencies with `flutter pub get`.
- Check for outdated dependencies with `flutter pub outdated`.
- Run static analysis with `flutter analyze`.
- Format source files with `dart format lib test`.
- Run the full test suite with `flutter test`.
- Run the app locally with `flutter run`.
- List attached devices with `flutter devices`.
- Clean generated build output with `flutter clean`.

## Single-Test Commands
- Run one test file with `flutter test test/widget_test.dart`.
- Run one named test with `flutter test test/widget_test.dart --plain-name "Counter increments smoke test"`.
- Use `--plain-name` whenever you need to target a single test case inside a file.
- Prefer file-scoped test runs while iterating, then finish with `flutter test`.

## Build Commands
- Build an Android APK with `flutter build apk`.
- Build an Android app bundle with `flutter build appbundle`.
- Build an iOS app with `flutter build ios`.
- Build a web app with `flutter build web`.
- Build a Linux desktop app with `flutter build linux`.
- Build a macOS desktop app with `flutter build macos`.
- Build a Windows desktop app with `flutter build windows`.
- Use the narrowest target required by the task.

## Verified Commands
- `flutter analyze` runs successfully in the current repo state.
- `flutter test test/widget_test.dart` runs successfully in the current repo state.
- Standard build commands are available because the repo includes the default Flutter platform targets.

## Formatting Rules
- Follow `package:flutter_lints/flutter.yaml` from `analysis_options.yaml`.
- There are no project-specific lint overrides at the moment.
- Use `dart format`; do not hand-tune whitespace.
- Use 2-space indentation.
- Use trailing commas in multi-line widget trees and argument lists.
- Prefer one widget per line when a tree becomes nested.
- Keep files ASCII unless an existing file already uses other characters for a clear reason.

## Import Conventions
- Order imports consistently and keep them grouped.
- Prefer Dart SDK imports first, then package imports, then relative imports if needed.
- Use package imports for app code when crossing library boundaries.
- Existing tests import app code as `package:mobile_app/main.dart`.
- Avoid unused imports; remove them instead of leaving analyzer warnings.

## Naming Conventions
- Use `PascalCase` for classes, widgets, enums, and typedefs.
- Use `lowerCamelCase` for variables, parameters, methods, and functions.
- Use a leading underscore for library-private members.
- Name widgets after their role in the UI, not after implementation details.
- Keep boolean names readable, such as `isLoading`, `hasError`, or `canSubmit`.

## Types And Immutability
- Prefer explicit, readable types when they improve clarity.
- Use `final` for values that do not change after initialization.
- Use `const` constructors and `const` widgets whenever possible.
- Avoid unnecessary `dynamic`.
- Let inference work for obvious local variables, but do not hide important types.

## Widget Structure
- Keep `build` methods declarative.
- Extract repeated or complex UI into smaller widgets.
- Keep state local when it only affects one widget subtree.
- Use `StatefulWidget` only when mutable UI state is required.
- Wrap state updates in `setState` within `State` objects.

## Error Handling
- Do not silently swallow exceptions.
- Prefer surfacing failures through UI state, return values, or typed exceptions.
- Add guards for null or invalid input where the code can realistically receive it.
- Avoid debug `print` calls in finished code unless logging is part of the task.

## Testing Conventions
- Use `flutter_test` for widget tests.
- Follow the current pattern of `testWidgets(...)` plus `WidgetTester`.
- Assert visible behavior with `find` and `expect`.
- Pump the widget tree before interacting with it.
- After triggering UI changes, call `pump()` or `pumpAndSettle()` as needed.

## Generated And Sensitive Files
- Do not hand-edit files under `.dart_tool/`.
- Do not hand-edit `build/` outputs.
- Be careful with generated plugin registrant files in platform folders.
- Only edit platform runner files when the task specifically requires platform configuration.

## Change Scope Guidance
- Match existing repository conventions before introducing new patterns.
- Avoid broad refactors unless they are necessary for the requested change.
- If you touch formatting, keep it limited to the files you already need to edit.
- Do not rename files, classes, or tests without a concrete reason.
- Preserve working behavior in unrelated platforms when making targeted changes.

## Suggested Agent Workflow
- Read `pubspec.yaml`, `analysis_options.yaml`, and the relevant Dart files before editing.
- Make the smallest coherent change.
- Run `dart format` on changed Dart files.
- Run `flutter analyze` after code changes.
- Run the smallest relevant test during iteration.
- Finish with the broadest reasonable verification for the task.

## What Not To Assume
- Do not assume custom state management libraries exist; none are declared in `pubspec.yaml` today.
- Do not assume custom lint rules exist beyond `flutter_lints`.
- Do not assume CI-specific wrapper commands exist; use the Flutter and Dart CLIs directly.
- Do not assume editor rule files exist; none were found during repository analysis.

## Bottom Line
- Use standard Flutter CLI commands.
- Follow `flutter_lints` plus existing code patterns.
- Prefer package imports, `const`, `final`, and small declarative widgets.
- Run `flutter analyze` and the most relevant `flutter test` command before wrapping up.
