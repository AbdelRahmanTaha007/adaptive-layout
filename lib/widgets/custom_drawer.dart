import 'package:adaptive_layout_practice/models/drawer_model.dart';
import 'package:adaptive_layout_practice/widgets/custom_drawer_items_listview.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});
  final List<DrawerItemModel> items = [
    DrawerItemModel(title: "D A S H B O A R D", icon: Icons.home),
    DrawerItemModel(title: "S E T T I N G S", icon: Icons.settings),
    DrawerItemModel(title: "A B O U T", icon: Icons.info),
    DrawerItemModel(title: "L O G O U T", icon: Icons.logout),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFDBDBDB),
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.favorite_outlined,
              size: 80,
              color: Colors.black,
            ),
          ),
          CustomDrawerItemsListView(items: items),
        ],
      ),
    );
  }
}
