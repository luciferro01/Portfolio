import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_circular_progress_indicator.dart';
import 'package:portfolio/constants.dart';
import 'area_info.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2.0,
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfo(
                    leadingData: "Residence",
                    trailingData: "India",
                  ),
                  AreaInfo(
                    leadingData: "City",
                    trailingData: "Bharatpur",
                  ),
                  AreaInfo(
                    leadingData: "Age",
                    trailingData: "19",
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: defaultPadding,
                    ),
                    child: Text(
                      "Skills",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: AnimatedCircularProgressIndicator(
                            percentage: 0.8, skill: "Flutter"),
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                        child: AnimatedCircularProgressIndicator(
                            percentage: 0.8, skill: "Flutter"),
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                        child: AnimatedCircularProgressIndicator(
                            percentage: 0.8, skill: "Flutter"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
