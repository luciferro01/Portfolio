import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

import '../constants.dart';
import '../models/Project.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: defaultPadding),
        const Responsive(
          tablet: ProjectsGridView(childAspectRatio: 1.1),
          mobileLarge:
              ProjectsGridView(childAspectRatio: 1.0, crossAxisCount: 2),
          mobile: ProjectsGridView(crossAxisCount: 1, childAspectRatio: 1.5),
          desktop: ProjectsGridView(),
        ),
        // ProjectsGridView(
        //   childAspectRatio: 1.3,
        //   crossAxisCount: 3,
        //   crossAxisSpacing: defaultPadding,
        // ),
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;
  final double crossAxisSpacing;
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
    this.crossAxisSpacing = defaultPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoProjects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: crossAxisSpacing,
      ),
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: secondaryColor,
        ),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              demoProjects[index].title!,
              maxLines: 2,
              style: Theme.of(context).textTheme.subtitle2,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            Text(
              demoProjects[index].description!,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(height: 1.5),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
              onPressed: () {},
              child: Text(
                "GitHub >>",
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
