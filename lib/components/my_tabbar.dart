import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTabBar extends StatelessWidget {
  final List tabOptions; // [ "Recent", Widget ]
  const MyTabBar({
    Key? key,
    required this.tabOptions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          // unselectedLabelStyle: const TextStyle(
          //   fontSize: 14,
          //   fontWeight: FontWeight.bold,
          // ),
          unselectedLabelColor: Colors.grey,
          unselectedLabelStyle: GoogleFonts.bebasNeue(fontSize: 20),
          labelStyle: GoogleFonts.bebasNeue(fontSize: 32),
          // isScrollable: true,
          tabs: List.generate(tabOptions.length, (index) {
            return Tab(
              child: Text(tabOptions[index][0]),
            );
          }),
        ),
        Expanded(
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            dragStartBehavior: DragStartBehavior.down,
            children: List.generate(tabOptions.length, (index) {
              return tabOptions[index][1];
            }),
          ),
        )
      ],
    );
  }
}
