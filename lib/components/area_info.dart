import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class AreaInfo extends StatelessWidget {
  String leadingData;
  String trailingData;
  AreaInfo({
    required this.leadingData,
    required this.trailingData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$leadingData : ",
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            trailingData,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
