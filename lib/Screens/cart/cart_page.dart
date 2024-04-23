
import 'package:e_commerce/Screens/cart/Widgets/address_container.dart';
import 'package:e_commerce/Screens/cart/Widgets/address_text.dart';
import 'package:e_commerce/Screens/cart/Widgets/coustom_appbar.dart';
import 'package:e_commerce/Screens/cart/Widgets/coustom_container_item.dart';
import 'package:e_commerce/Screens/cart/items_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffEBEBEB),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarWidget(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AddressText(
                    text: 'Delivery Address',
                    image: 'assets/images/adress.png',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AddresContainer(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Shopping List',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              Get.to( const DetailItemsPage());
                            },
                            child: const CoustomContainerItems());
                      }),
                  // const CoustomContainerItems()
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
