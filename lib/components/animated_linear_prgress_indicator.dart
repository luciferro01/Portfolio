import 'package:flutter/material.dart';
import '../constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.title,
  }) : super(key: key);

  final double percentage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: ((context, value, child) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text("${(value * 100).toInt()} %"),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                LinearProgressIndicator(
                  value: value.toDouble(),
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
              ],
            )),
      ),
    );
  }
}
