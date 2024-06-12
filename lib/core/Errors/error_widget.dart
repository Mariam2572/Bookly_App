// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String text;
  void Function() onPressed;
  CustomErrorWidget({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.error,
          size: 50,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(text),
        TextButton(
          onPressed: onPressed,
          child: const Text(
            'Try again',
            style: Styles.textStyle18,
          ),
        )
      ],
    );
  }
}
