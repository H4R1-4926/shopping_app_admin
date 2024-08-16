import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_admin/Core/colors.dart';
import 'package:shopping_app_admin/Presentation/Screens/Orders/TabViews/completed.dart';
import 'package:shopping_app_admin/Presentation/Screens/Orders/TabViews/neworder.dart';
import 'package:shopping_app_admin/Presentation/Screens/Orders/TabViews/ongoing.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text(
              'Orders',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
           
            bottom: TabBar(
              tabs: const [
                Tab(
                  text: 'New Order',
                ),
                Tab(
                  text: 'OnGoing',
                ),
                Tab(
                  text: 'Completed',
                ),
              ],
              indicatorColor: Theme.of(context).brightness == Brightness.dark
                  ? kwhite
                  : kblack,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
              indicatorWeight: 3,
              labelStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? kwhite
                      : kblack),
              unselectedLabelStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 12, color: kGrey),
            ),
          ),
          body: const TabBarView(
              children: [NewOrderPage(), OrderOnGoing(), OrderCompleted()])),
    );
  }
}
