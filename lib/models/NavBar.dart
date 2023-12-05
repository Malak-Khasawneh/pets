

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pets/models/Cart.dart';
import 'package:pets/models/Profile.dart';

import 'Home Page.dart';


class NavBar extends StatelessWidget {
  const NavBar({super.key, Key? k});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(

      bottomNavigationBar:
      Obx(
            () => BottomNavigationBar(type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Color(0xff8F6FC2),

          elevation: 0,
          currentIndex: controller.selectedIndex.value,
          onTap: (index) =>
          controller.selectedIndex.value = index,

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: ''),

          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [const Home(),  Cart(),  const Profile(),const Scaffold()];

}