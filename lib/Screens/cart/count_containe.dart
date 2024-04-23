import 'package:e_commerce/Model_Veiw/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CountContainer extends StatelessWidget {
  CountContainer({
    super.key,
  });
  CountController controller = Get.put(CountController(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 75),
      height: 40,
      width: 120,
      decoration: BoxDecoration(
        color: const Color(0xff1A44B8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              controller.increment();
            },
            icon: const Icon(Icons.add),
            color: Colors.white,
          ),
          Center(
              child: GetBuilder<CountController>(
            builder: (controller) => Text(
              '${controller.counter}',
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          )),
          IconButton(
            onPressed: () {
              controller.decrement();
            },
            icon: const Icon(Icons.remove),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
