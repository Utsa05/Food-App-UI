import 'package:flutter/material.dart';

class Margin extends StatelessWidget {
  const Margin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: SizedBox(
        height: 25.0,
      ),
    );
  }
}