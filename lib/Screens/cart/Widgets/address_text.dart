import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddressText extends StatelessWidget {
   AddressText({
    super.key,required this.image,required this.text
  });
   String image;
     String text;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Image.asset(
          image,
          //'assets/images/adress.png',
          scale: 3,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
         //'Delivery Address',
         text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
