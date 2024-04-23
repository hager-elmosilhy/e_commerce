import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key, this.widget,
  });
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: MaterialButton(
        onPressed: () {
          Get.back();
        },
        child: widget
        //const Icon(Icons.arrow_back_ios),
      ),
      title: const Center(
        child: Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            'Card',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {
              /* Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  HomePage()),
                  );*/
            },
            icon: Image.asset(
              'assets/images/menu.png',
              scale: 3.5,
            )),
      ],
    );
  }
}
