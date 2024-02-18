import 'package:flutter/material.dart';
import 'package:flutter_memes_ttd_bloc/core/injector/injector.dart';
import 'package:flutter_memes_ttd_bloc/presentation/pages/meme_home_page.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MemeHomePage(),
    );
  }
}
