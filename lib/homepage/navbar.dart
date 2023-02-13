import 'package:flutter/material.dart';
import 'package:demo/authentication/login.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("chrisilva"),
            accountEmail: const Text("Chris@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "images/einsten.jpg",
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/bg1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favourites'),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.people),
            title: Text('Peoples'),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: null,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Requests'),
            onTap: null,
            trailing: ClipOval(
              child: Container(
                color: Colors.purple,
                height: 20,
                width: 20,
                child: const Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.description),
            title: Text('Policies'),
            onTap: null,
          ),
          const Divider(),
           ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Exit'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginIntro()),
                );
              },
  
              ),
        ],
      ),
    );
  }
}