import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Hello, name'),
        ),
        drawer: Drawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color.fromRGBO(143, 111, 194, 0.3),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discounts up to 20%',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'On all products',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Container(),
                    ));
                  },
                  child: Text(
                    'See all',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 99,
                    height: 99,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(143, 111, 194, 0.3),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Image(
                            image: AssetImage('assets/Images/food.png'),
                          ),
                        ),
                        Text('Food')
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 99,
                    height: 99,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(143, 111, 194, 0.3),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Image(
                            image: AssetImage('assets/Images/toys.png'),
                          ),
                        ),
                        Text('Toys')
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 99,
                    height: 99,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(143, 111, 194, 0.3),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Image(
                            image: AssetImage('assets/Images/essentials.png'),
                          ),
                        ),
                        Text('Essentials')
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Check out the latest',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                // TextButton(
                //   onPressed: () {},
                //   child: Text(
                //     'See all',
                //     style: TextStyle(color: Colors.black),
                //   ),
                // ),
              ],
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    height: 110,
                    child: TextButton(
                        onPressed: () {},
                        child:
                            Image(image: AssetImage('assets/Images/Ad2.jpg'))),
                  ),
                  SizedBox(
                    height: 110,
                    child: TextButton(
                        onPressed: () {},
                        child:
                            Image(image: AssetImage('assets/Images/Ad3.jpg'))),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Choose your Vet',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DocWidget(
                  imageUrl: 'assets/Images/Dr.jpg',
                  onTap: () {},
                  name: 'Dr. Sarah Drue',
                  rate: 4.3,
                ),
                DocWidget(
                  imageUrl: 'assets/Images/Dr1.jpg',
                  onTap: () {},
                  name: 'Dr. Adam Link',
                  rate: 4.3,
                ),
                DocWidget(
                  imageUrl: 'assets/Images/dr3.jpg',
                  onTap: () {},
                  name: 'Dr. Mira Jack',
                  rate: 4.3,
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class DocWidget extends StatelessWidget {
  const DocWidget({
    super.key,
    required this.onTap,
    required this.imageUrl,
    required this.name,
    required this.rate,
  });

  final VoidCallback onTap;
  final String imageUrl;
  final String name;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Container(
        width: 99,
        height: 120,
        child: Column(
          children: [
            SizedBox(
              width: 98,
              height: 70,
              child: Image(
                image: AssetImage(imageUrl),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 10),
                ),
                Column(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                    ),
                    Text(
                      '$rate',
                      style: TextStyle(fontSize: 7),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
