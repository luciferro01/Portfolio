import 'package:flutter/material.dart';

import '../constants.dart';
import 'knowledge_text.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Knowledge',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const KnowledgeText(text: "Flutter, Dart"),
        const KnowledgeText(text: "Figma"),
        const KnowledgeText(text: "DSA"),
        const KnowledgeText(text: "Competitive "),
      ],
    );
  }
}
