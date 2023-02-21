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
          // all fields are optional
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
