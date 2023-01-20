import 'package:flutter/material.dart';
import 'package:portfolio/components/side_menu.dart';
import 'package:portfolio/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({required this.children, Key? key}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 3,
              child: SideMenu(),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Column(
                  children: [...children],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
