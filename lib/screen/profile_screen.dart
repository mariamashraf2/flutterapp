import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/Developers.dart';
import 'package:flutter_application_2/screen/aboutscreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('assets/image.png'),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Ismail Tarek',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5.0),
              const Text(
                'AliAhmed33@gmail.com',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20.0),
              _settingItem(
                title: 'Account',
                icon: Icons.edit,
                onTap: () {
                  // Navigation
                },
              ),
              _settingItem(
                title: 'Share App',
                icon: Icons.share,
                onTap: () {
                  // Navigation
                },
              ),
              _settingItem(
                title: 'Rate Us',
                icon: Icons.star,
                onTap: () {
                  // Navigation
                },
                iconColor: Colors.amber,
              ),
              _settingItem(
                title: 'About',
                icon: Icons.info_outline,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const aboutscreen()));
                },
              ),
              _settingItem(
                title: 'Developers',
                icon: Icons.person,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const developers()));
                },
              ),
              _settingItem(
                title: 'Logout',
                icon: Icons.logout,
                onTap: () {
                  // Navigation
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _settingItem({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
    Color? iconColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.grey[300],
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon, color: iconColor),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
