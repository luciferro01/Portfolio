import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'area_info.dart';
import 'coding.dart';
import 'knowledge.dart';
import 'my_info.dart';
import 'skills.dart';

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
                  const Skills(),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  const Coding(),
                  const Divider(),
                  const Knowledge(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
