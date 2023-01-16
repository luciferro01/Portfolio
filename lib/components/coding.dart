import 'package:flutter/material.dart';
import '../constants.dart';
import 'animated_linear_prgress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        const AnimatedLinearProgressIndicator(percentage: 0.8, title: "HTML5"),
        const AnimatedLinearProgressIndicator(percentage: 0.75, title: "CSS"),
        const AnimatedLinearProgressIndicator(
            percentage: 0.4, title: "javaScript"),
        const AnimatedLinearProgressIndicator(percentage: 0.4, title: "C++"),
        const AnimatedLinearProgressIndicator(percentage: 0.3, title: "Kotlin"),
      ],
    );
  }
}
