import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F),
            size: 17,
          ),
          const SizedBox(width: 5),
          const Text(
            '4.5',
            style: Styles.textStyle16,
          ),
          const SizedBox(width: 6.3),
          Text(
            '(275)',
            style: Styles.textStyle14.copyWith(
              color: const Color(0xff707070)
            ),
          ),
        ],
      ),
    );
  }
}
