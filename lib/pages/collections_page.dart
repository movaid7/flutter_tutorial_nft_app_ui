import 'package:flutter/material.dart';
import 'package:nft_app_ui/components/my_appbar.dart';
import 'package:nft_app_ui/components/my_tabbar.dart';
import 'package:nft_app_ui/tabs/recent_tab.dart';
import 'package:nft_app_ui/tabs/top_tab.dart';
import 'package:nft_app_ui/tabs/trending_tab.dart';

final List tabOptions = [
  ["Recent", const RecentTab()],
  ["Trending", const TrendingTab()],
  ["Top", const TopTab()],
];

class CollectionsPage extends StatelessWidget {
  final BuildContext context;

  const CollectionsPage({Key? key, required this.context}) : super(key: key);

  void searchButtonTapped() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Search'),
          content: const TextField(
            decoration: InputDecoration(
              hintText: 'Search',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Search'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Column(
        children: [
          // title + search button
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: MyAppBar(
              title: 'Explore Collections',
              onSearchTap: searchButtonTapped,
            ),
          ),

          // tab bar
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: MyTabBar(tabOptions: tabOptions),
          ),
        ],
      ),
    );
  }
}
