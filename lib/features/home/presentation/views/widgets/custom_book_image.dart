// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:bookly/core/utils/app_assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imagePath,
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          //  Container(
          //   decoration:  BoxDecoration(
          //       borderRadius: BorderRadius.all(Radius.circular(25)),
          //       // color: Colors.red,
          //       image: DecorationImage(
          //         image: NetworkImage(imagePath),
          //         fit: BoxFit.fill,
          //       ),),
          // ),
        ),
      ),
    );
  }
}
