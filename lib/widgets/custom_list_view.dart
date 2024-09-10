import 'package:adaptive_layout_practice/widgets/custom_item_2.dart';
import 'package:flutter/material.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(top: 15),
          child:  CustomItem2(),
        );
      },
    );
  }
}

