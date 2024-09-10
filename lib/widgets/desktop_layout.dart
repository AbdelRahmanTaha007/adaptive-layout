import 'package:adaptive_layout_practice/widgets/custom_desktop_widget.dart';
import 'package:adaptive_layout_practice/widgets/custom_drawer.dart';
import 'package:adaptive_layout_practice/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        CustomDrawer(),
        const Expanded(
            flex: 3,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TabletLayout())),
        const Expanded(flex: 1, child: CustomDesktopWidget()),
      ],
    );
  }
}
