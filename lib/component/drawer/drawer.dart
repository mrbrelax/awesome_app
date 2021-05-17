import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Mr.B Relax"),
            accountEmail: Text("mrbrelax56@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://wallpapercave.com/wp/wp1810641.jpg",
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Mr.B Relax'),
            subtitle: Text('Developer & Pentester'),
            trailing: Icon(Icons.edit),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("mrbrelax56@gmail.com"),
            trailing: Icon(Icons.edit),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
