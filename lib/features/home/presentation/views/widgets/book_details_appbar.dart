import 'package:flutter/material.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close,size: 30,),
        ),
        actions: [
           IconButton(
             onPressed: () {},
             icon: const Icon(Icons.shopping_cart_outlined,size: 30,),
           ),
        ]);
  }
}
