<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Screener

## Features

Flutter provides new opportunities to build apps that can run on mobile, desktop, and the web from a single codebase. However, with these opportunities, come new challenges. You want your app to feel familiar to users, adapting to each platform by maximizing usability and ensuring a comfortable and seamless experience. That is, you need to build apps that are not just multiplatform, but are fully platform adaptive.

## Getting started

To start using your screener package, you'll first need to publish it to pub.dev so that others can easily include it in their projects. Once your package is published, other developers can add it as a dependency in their pubspec.yaml file.

## Usage

Add the Package Dependency: In the pubspec.yaml file of the Flutter project where they want to use your package, they should add a dependency to screener. For example:

```dart
dependencies:
  flutter:
    sdk: flutter
  screener: ^1.0.0 
```

Import the Package: In the Dart file where they want to use your SizeExtension, they should import the screener package:

```dart
import 'package:flutter_responsive/flutter_responsive.dart';
```


Use the Extension: They can now use the SizeExtension on any num type to get the responsive size or font size. For example:


```dart
double size = 100.size(context); // Get a responsive size
double fontSize = 20.fontSize(context); // Get a responsive font size

```

## Additional information

Note: Make sure to replace ^1.0.0 with the correct version of your package.
