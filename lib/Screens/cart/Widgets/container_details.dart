import 'package:e_commerce/Screens/cart/Widgets/text_wiget.dart';
import 'package:flutter/material.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16.0),
      child: IntrinsicHeight(
        child: Container(
          width: double.infinity,
          decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order Payment Details',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
                TextWidget(
                  text1: 'Order Amounts',
                  text2: '7000 LE', sizedBox: 180,
                ),
                TextWidget(
                  text1: 'Fast Delivery Extra  50 LE',
                  text2: 'Select', sizedBox: 110,
                ),
                TextWidget(
                  text1: 'Normal Delivery',
                  text2: 'Select', sizedBox: 180,
                ),
                Divider(),
                TextWidget(
                  text1: 'Order Total',
                  text2: '7000 LE', sizedBox: 205,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}