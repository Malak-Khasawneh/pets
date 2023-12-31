import 'package:flutter/material.dart';

import 'Button.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('assets/Images/WhatsApp Image 2023-11-26 at 10.52.15 AM.jpeg'),
                    ),
                    const SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Sunie Pham',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'sunieux@gmail.com',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30.0),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const EditProfilePage()),
                        );
                      },
                      child: Icon(
                        Icons.settings,
                        size: 40,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100),
                buildContainerWithItems([
                  {'title': 'Payment Method', 'icon': Icons.credit_card, 'color': Colors.black},
                  {'title': 'My Wishlist', 'icon': Icons.favorite, 'color': Colors.black},
                  {'title': 'Rate This App', 'icon': Icons.star, 'color': Colors.black},
                  {'title': 'Log Out', 'icon': Icons.exit_to_app, 'color': Colors.black},
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildContainerWithItems(List<Map<String, dynamic>> items) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items
            .asMap()
            .entries
            .map(
              (entry) => Column(
            children: [
              if (entry.key != 0) const Divider(height: 1, color: Colors.black12),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: InkWell(
                  onTap: () {
                    // Add your logic for each button press here
                    switch (entry.value['title']) {
                      case 'Payment Method':
                      // Handle Payment Method button press
                        break;
                      case 'My Wishlist':
                      // Handle My Wishlist button press
                        break;
                      case 'Rate This App':
                      // Handle Rate This App button press
                        break;
                      case 'Log Out':
                      // Handle Log Out button press
                        break;
                    }
                  },
                  child: Row(
                    children: [
                      Icon(entry.value['icon'], color: Color(0xff8F6FC2), size: 30),
                      SizedBox(width: 20),
                      Text(
                        entry.value['title'],
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        )
            .toList(),
      ),
    );
  }
}

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color(0xff8F6FC2),
            leading: IconButton(
              iconSize: 30,
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 16.0),
                const Text(
                  'Profile Setting',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/Images/WhatsApp Image 2023-11-26 at 10.52.15 AM.jpeg'),
                ),

                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(labelText: 'First Name'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(labelText: 'Last Name'),
                        ),
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Gender'),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Phone Number'),
                  obscureText: true,
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  style: buttonPrimary,
                  onPressed: () {
                    // Implement logic to save edited profile
                    Navigator.pop(context); // Navigate back to the profile page
                  },
                  child: const Text('Save Changes', style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
