import 'package:flutter/material.dart';

import 'package:shopping_app_admin/Core/colors.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        width: double.infinity,
        color: Theme.of(context).brightness == Brightness.dark
            ? kdarkbackground
            : kwhite,
        child: GridView.custom(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 25,
                childAspectRatio: 0.8),
            childrenDelegate: SliverChildListDelegate([
              Container(
                color: kGrey,
              ),
              Container(
                color: kGrey,
              ),
              Container(
                color: kGrey,
              ),
              Container(
                color: kGrey,
              ),
            ])));
  }
}
