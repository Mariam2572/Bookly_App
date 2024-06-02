import 'package:bookly/features/home/presentation/views/widgets/details_body.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DetailsBody(),
    );
  }
}