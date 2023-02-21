# dad-jokes- [![pub package](https://img.shields.io/pub/v/dad_jokes.svg)](https://pub.dartlang.org/packages/dad_jokes)

A Dart package for getting random dad jokes from [icanhazdadjoke.com](https://icanhazdadjoke.com/). The `dad_joke` package in Flutter provides a simple and fun way to incorporate dad jokes into your app. It connects to the icanhazdadjoke API to fetch random jokes and display them in your app. With a few lines of code, you can add a touch of humor to your app and entertain your users with dad jokes that are sure to make them smile. Whether you're creating a lighthearted app or just want to add some fun to your existing app, the `dad_joke` package is a great choice.

## Usage

To use this package, add `dad_jokes` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## Screenshots

![Screenshot 1](../dad_joke/assets/images/screenshot1.png)

### Example

```dart
import 'package:dad_joke/dad_joke.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Get Dad Joke',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: const SizedBox(
        child: DadJoke(
          // All fields are optional
          backgroundColor: Colors.white, // get Background Color
          reloadIcon: Icons.replay_outlined, // get Icon to show
          reloadIconColor: Colors.red, // get Icon Color
          onLoadView: CircularProgressIndicator(), // get Loader to show
          onLoadViewColor: Colors.red, // get loader color
        ),
      ),
    );
  }
}

```

## Parameters

| Parameter       | Type      | Description                              |
| --------------- | --------- | ---------------------------------------- |
| backgroundColor | Color?    | Background color of the joke card.       |
| reloadIcon      | IconData? | Icon to show when the joke is loading.   |
| reloadIconColor | Color?    | Color of the reload icon.                |
| onLoadView      | Widget?   | Widget to show when the joke is loading. |
| onLoadViewColor | Color?    | Color of the loading widget.             |

## Also Need Package

| Package                               | Description                                                  |
| ------------------------------------- | ------------------------------------------------------------ |
| [http](https://pub.dev/packages/http) | A composable, Future-based library for making HTTP requests. |

## Github Repository

[Dad Jokes](https://github.com/shubham0809200/dad-jokes-)

## Author

Shubham Kumar - [Github](https://github.com/shubham0809200)

## Also See

| Package                                                             | Description                                           |
| ------------------------------------------------------------------- | ----------------------------------------------------- |
| [Single Text Field](https://pub.dev/packages/single_text_field)     | A Flutter package for creating a single text field.   |
| [Drop Down List Menu](https://pub.dev/packages/drop_down_list_menu) | A Flutter package for creating a drop down list menu. |
