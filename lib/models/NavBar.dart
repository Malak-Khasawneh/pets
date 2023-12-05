

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
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.messenger), label: ''),

          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [const Home(), const Cart(), const Scaffold(), const Profile()];

}