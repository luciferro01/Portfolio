import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                  const Divider(),
                  const SizedBox(height: defaultPadding / 2),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Download Resume',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        SvgPicture.asset("icons/download.svg")
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xFF24242E),
                    ),
                    child: Row(
                      children: [
                        const Spacer(),
                        IconButton(
                          hoverColor: Colors.transparent,
                          onPressed: () {},
                          icon: SvgPicture.asset("icons/linkedin.svg"),
                        ),
                        const Spacer(),
                        IconButton(
                          hoverColor: Colors.transparent,
                          onPressed: () {},
                          icon: SvgPicture.asset("icons/github.svg"),
                        ),
                        const Spacer(),
                        IconButton(
                          hoverColor: Colors.transparent,
                          onPressed: () {},
                          icon: SvgPicture.asset("icons/twitter.svg"),
                        ),
                        const Spacer(),
                        IconButton(
                          hoverColor: Colors.transparent,
                          // color: Colors.transparent,
                          onPressed: () {},
                          icon: SvgPicture.asset("icons/instagram.svg"),
                        ),
                        const Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
