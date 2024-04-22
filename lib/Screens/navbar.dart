import 'package:e_commerce/Screens/Cart.dart';
import 'package:e_commerce/Screens/favorite.dart';
import 'package:e_commerce/Screens/home.dart';
import 'package:e_commerce/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Model_Veiw/navbar_controller.dart';

// ignore: must_be_immutable
class NavBarView extends StatelessWidget {
  NavBarController navbarController = Get.put(NavBarController());
  NavBarView({super.key});

  final screens = [
    const HomeScreen(),
    const FavoriteScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: navbarController.selectedIndex.value,
            children: screens,
          )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            showSelectedLabels: true,
            onTap: (index) {
              navbarController.changeIndex(index);
            },
            currentIndex: navbarController.selectedIndex.value,
            items: [
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: Image.asset(
                    'assets/images/home.png',
                    scale: 3,
                  )),
              BottomNavigationBarItem(
                  label: 'Favorite',
                  icon: Image.asset(
                    'assets/images/favorite.png',
                    scale:3.5,
                  )),
              BottomNavigationBarItem(
                  label: 'Cart',
                  icon: Image.asset(
                    'assets/images/cart.png',
                    scale: 4,
                  )),
              BottomNavigationBarItem(
                  label: 'Person',
                  icon: Image.asset(
                    'assets/images/Person.png',
                    scale: 3,
                  )),
            ],
          )),
    );
  }
}

/*Widget bottomNavigationBar() {
  return GetBuilder<Homeviewmodel>(
    init: Homeviewmodel(),
    builder: ((controller) => BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                activeIcon: const Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text("Home"),
                ),
                label: '',
                icon: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/images/home.png',
                    fit: BoxFit.contain,
                    width: 20,
                  ),
                )),
            BottomNavigationBarItem(
                activeIcon: const Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text("Favorite"),
                ),
                label: '',
                icon: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/images/favorite.png',
                    fit: BoxFit.contain,
                    width: 20,
                  ),
                )),
            BottomNavigationBarItem(
                activeIcon: const Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text("Cart"),
                ),
                label: '',
                icon: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/images/cart.png',
                    fit: BoxFit.contain,
                    width: 20,
                  ),
                )),
            BottomNavigationBarItem(
                activeIcon: const Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text("Person"),
                ),
                label: '',
                icon: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/images/Person.png',
                    fit: BoxFit.contain,
                    width: 20,
                  ),
                )),
          ],
          currentIndex: controller.currentscreen,
          onTap: (index) {
            controller.selectedvalue(index);
          },
          elevation: 0,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.grey.shade50,
        )),
  );
}*/