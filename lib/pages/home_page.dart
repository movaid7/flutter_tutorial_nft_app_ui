import 'package:flutter/material.dart';
import 'package:nft_app_ui/components/my_bottombar.dart';
import 'package:nft_app_ui/pages/collections_page.dart';
import 'package:nft_app_ui/util/glass_box.dart';
import '../theme/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // user tapped searched button

  // tab options

  // bottom bar navigation
  int _currentBottonIndex = 0;
  void _handleIndexChanged(int? index) {
    setState(() {
      _currentBottonIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      extendBody: true,
      bottomNavigationBar: GlassBox(
        child: MyBottomBar(
          index: _currentBottonIndex,
          onTap: _handleIndexChanged,
        ),
      ),
      // body: Collections(context: context),
      // set body based on bottom bar index
      body: IndexedStack(
        index: _currentBottonIndex,
        children: [
          CollectionsPage(context: context),
          const Center(child: Text('Alerts')),
          const Center(child: Text('Favourites')),
          const Center(child: Text('Profile')),
        ],
      ),
    );
  }
}
