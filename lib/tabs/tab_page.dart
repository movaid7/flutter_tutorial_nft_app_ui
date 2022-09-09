import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  final List<Widget> content;
  const TabPage({Key? key, required this.content}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage>
    with AutomaticKeepAliveClientMixin<TabPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 75),
        child: Column(children: widget.content),
      ),
    );
  }
}
