# Common Errors & How to Resolve Them

This page lists common issues encountered when working with Flutter/Dart projects and quick steps to resolve them.

- **`flutter doctor` shows missing dependencies (Android SDK / Visual Studio)**
  - Solution: Follow the suggestions from `flutter doctor -v`. Install Android SDK, set `ANDROID_HOME`/`ANDROID_SDK_ROOT`, or install Visual Studio with C++ workload for Windows desktop builds.

- **Build fails with missing packages / `packages get` errors**
  - Solution: Run `flutter pub get` from project root. If network/proxy errors occur, check network settings or try `flutter pub get --offline` after ensuring packages cached.

- **`Unable to locate an Android SDK` or `cmdline-tools` missing**
  - Solution: Install Android SDK command line tools from Android Studio > SDK Manager > SDK Tools.

- **Gradle build failures on Android**
  - Solution: Run `flutter clean` then `flutter pub get`. Check `android/gradle.properties` and `local.properties` for correct `sdk.dir` if using local SDK.

- **iOS build errors on macOS (signing, provisioning)**
  - Solution: Use Xcode to manage signing or run `flutter build ios` with correct signing configs. This repo's primary target is cross-platform Flutter — skip iOS-specific steps if not building for iOS.

- **Windows build errors (MSVC / missing components)**
  - Solution: Install required Visual Studio components (Desktop development with C++). Then run `flutter doctor` and follow recommendations.

- **Dart `NoSuchMethodError` or type/dynamic errors**
  - Solution: Verify null-safety expectations, update code to handle nullable types, and run analyzer: `dart analyze` or `flutter analyze`.

- **HTTP request fails in `bin/api_example.dart`**
  - Solution: Ensure the device has network access; check firewall. Test the endpoint in a browser first. If running on an emulator, verify network routing.

- **`pubspec.yaml` dependency version conflicts**
  - Solution: Run `flutter pub outdated` to inspect, then update with `flutter pub upgrade --major-versions` carefully. Lock versions if needed.

If you encounter an error not listed here, capture the output and open an issue or ask for assistance; include the output of `flutter doctor -v` and the exact error message.
