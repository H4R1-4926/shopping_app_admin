import 'package:flutter/material.dart';

import 'package:shopping_app_admin/Core/colors.dart';
import 'package:shopping_app_admin/Presentation/Screens/Account/account.dart';
import 'package:shopping_app_admin/Presentation/Screens/Home/Items_Category/items.dart';
import 'package:shopping_app_admin/Presentation/Screens/Orders/orders_page.dart';

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
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ItemList(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img/items.jpg')),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all()),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrdersPage(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img/orders.jpg')),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all()),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountPage(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img/settings.jpg')),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all()),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/img/extra.jpg')),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all()),
              ),
            ])));
  }
}
