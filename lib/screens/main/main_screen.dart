import 'package:flutter/material.dart';
import 'package:portfolio/components/side_menu.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({required this.children, Key? key}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: Colors.transparent,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              ),
            ),
      drawer: const SideMenu(),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 2,
                child: SideMenu(),
              ),
            const SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              flex: 8,
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
