import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'animated_flutter_text.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          const Image(
            image: AssetImage("images/bg.png"),
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing Art Space!",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.subtitle1!,
                  child: Row(
                    children: [
                      const AnimatedFlutterText(),
                      const SizedBox(
                        width: defaultPadding / 2,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'I build  BMI calculator with dark theme',
                            speed: const Duration(milliseconds: 60),
                          ),
                          TypewriterAnimatedText(
                            'I build chat application',
                            speed: const Duration(milliseconds: 60),
                          ),
                          TypewriterAnimatedText(
                            'I build Netflix clone with light and dark mode',
                            speed: const Duration(milliseconds: 60),
                          ),
                        ],
                        // isRepeatingAnimation: true,
                      ),
                      const AnimatedFlutterText(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 2,
                      vertical: defaultPadding,
                    ),
                    backgroundColor: primaryColor,
                  ),
                  child: const Text(
                    "Explore Now",
                    style: TextStyle(
                      color: darkColor,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
