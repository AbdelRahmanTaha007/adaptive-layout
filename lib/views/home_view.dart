import 'package:adaptive_layout_practice/widgets/custom_drawer.dart';
import 'package:adaptive_layout_practice/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: const Color(0xFFDBDBDB),
      appBar: buildAppBar(context),
      // appBar: const CustomAdaptiveAppBar(),
      body: const HomeViewBody(),
    );
  }
  AppBar? buildAppBar(context) {
    // print("MediaQuery width = ${MediaQuery.sizeOf(context).width}");
    return MediaQuery.sizeOf(context).width - 30 < 900
        ? AppBar(
            backgroundColor: Colors.black,
            leading: GestureDetector(
              onTap: () {
                scaffoldKey.currentState!.openDrawer();
              },
              child: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          )
        : null;
  }
}


// class CustomAdaptiveAppBar extends StatelessWidget
//     implements PreferredSizeWidget {
//   const CustomAdaptiveAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constraints) {
//       if (constraints.maxWidth < 900) {
//         return AppBar(
//           backgroundColor: Colors.black,
//           leading: GestureDetector(
//             onTap: () {
//                scaffoldKey.currentState!.openDrawer();
// },
//             child: const Icon(
//               Icons.menu,
//               color: Colors.white,
//             ),
//           ),
//         );
//       } else {
//         return const SizedBox();
//       }
//     });
//   }
//   @override
//   Size get preferredSize => const Size.fromHeight(56);
// }
