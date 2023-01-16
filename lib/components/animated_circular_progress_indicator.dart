import 'package:flutter/material.dart';
import '../constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  final double percentage;
  final String skill;

  const AnimatedCircularProgressIndicator(
      {required this.percentage, required this.skill, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: ((context, value, child) => Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: value.toDouble(),
                      color: primaryColor,
                      backgroundColor: darkColor,
                    ),
                    Center(
                      child: Text(
                        "${(value * 100).toInt()} %",
                      ),
                    ),
                  ],
                )),
          ),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          skill,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
