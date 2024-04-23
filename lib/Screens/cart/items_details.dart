
import 'package:e_commerce/Screens/cart/Widgets/container_details.dart';
import 'package:e_commerce/Screens/cart/Widgets/container_items.dart';
import 'package:e_commerce/Screens/cart/Widgets/coustom_appbar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailItemsPage extends StatelessWidget {
  const DetailItemsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEBEBEB),
        body: Column(
          children: [
            const AppBarWidget(
              widget: Icon(Icons.arrow_back_ios),
            ),
             const ItemContainer(),
            const DetailsContainer(),
            IntrinsicHeight(
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('7000 LE',style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(height: 15,),
                        Text('View Details',style: TextStyle(
                          color: Color(0xff407BFF),
                          fontSize: 16,

                        ),),
                      ],
                    ),
                    const SizedBox(width: 40,),
                    Container(
                      height: 40,
                      width: 200,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff1A44B8),
                      ),
                      child: const Center(child: Text('Proceed to Payment',style: TextStyle(color: Colors.white),)),
                    ),
                  ],),
                ),),
            )
          ],
        ),
      ),
    );
  }
}


