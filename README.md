# Aperture

Aperture is an offline-first file and web browser with an optional AI panel. The Flutter UI uses Riverpod for state and `go_router` for navigation. Dart is limited to UI and platform-channel integration; heavy logic belongs in the Rust `core` crate and is connected through `flutter_rust_bridge`. The native webview is planned to use the platform webview, not Chromium.

## Data flow

The Flutter shell presents three surfaces: files, viewing, and AI. In later slices, user-granted folders and app data stay in the platform sandbox and are accessed through Rust. Rust canonicalizes paths and enforces granted-root boundaries before filesystem work; SQLite and FTS5 will hold local metadata and the search index. Secrets will use platform secure storage. Browser page and file content are treated as untrusted data. AI requests, when enabled by the user, go only to the OpenAI-compatible endpoint configured by that user; an empty base URL means AI is off.

## Build and test

Install Flutter 3.44 or newer, the Android SDK, and JDK 17. On Ubuntu, install the Linux desktop prerequisites with `sudo apt install clang cmake ninja-build pkg-config libgtk-3-dev`.

Run `flutter pub get` and `flutter test` from the repository root. Build the supported targets with `flutter build linux` and `flutter build apk`. The Android app supports Android 8.0 (API 26) and newer. Linux and Android runner projects are included; iOS, macOS, and Windows remain planned targets.

## Delivery boundary

This repository currently contains slice 1 only: the Flutter shell, feature placeholders, and data-flow overview. Folder granting and previews, indexing and search, browser behavior, downloads, and AI configuration/tools are not implemented yet. Stop here until slice 1 is reviewed; later slices must be implemented and tested one at a time.
