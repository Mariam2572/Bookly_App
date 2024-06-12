// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({
    Key? key,
    required this.rating,
    required this.count,
  }) : super(key: key);
  final String rating;
  final num count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 17,
        ),
        const SizedBox(width: 6.3),
        Text(
          rating,
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 6.3),
        Text(
          '($count)',
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
