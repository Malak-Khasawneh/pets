import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_shopping_cart),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.account_circle_outlined)),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        child: GridView.count(
          mainAxisSpacing: 40,
          crossAxisSpacing: 40,
          children: [
            ProductWidget(
              imageUrl: 'assets/Images/food.png',
              name: 'Food',
              onTap: () {},
            ),
            ProductWidget(
              imageUrl: 'assets/Images/medicine.PNG',
              name: 'Medicine',
              onTap: () {},
            ),
            ProductWidget(
              imageUrl: 'assets/Images/toys2.jpg',
              name: 'toys',
              onTap: () {},
            ),
            ProductWidget(
              imageUrl: 'assets/Images/hygiene.PNG',
              name: 'Hygiene',
              onTap: () {},
            ),
            ProductWidget(
              imageUrl: 'assets/Images/essentials.png',
              name: 'Essentials',
              onTap: () {},
            ),
            ProductWidget(
              imageUrl: 'assets/Images/pet-hotel.jpg',
              name: 'Resorts',
              onTap: () {},
            ),
          ],
          crossAxisCount: 2,
        ),
      ),
    ));
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.onTap,
  });

  final String imageUrl;
  final String name;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Container(
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Image(
                image: AssetImage(imageUrl),
              ),
            ),
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
