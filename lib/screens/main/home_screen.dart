import 'package:flutter/material.dart';

import 'package:portfolio/screens/main/main_screen.dart';

import '../../components/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        Header(),
      ],
    );
  }
}
