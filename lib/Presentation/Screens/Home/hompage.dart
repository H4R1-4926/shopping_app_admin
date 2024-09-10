// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_admin/Core/colors.dart';
import 'package:shopping_app_admin/Presentation/Screens/Home/Notification/notification_page.dart';

import 'Widgets/carousal_widget.dart';

import 'Widgets/second_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kwhite,
        appBar: AppBar(
          backgroundColor: kwhite,
          surfaceTintColor: kwhite,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(50, 45),
                  bottomLeft: Radius.elliptical(50, 45))),
          leading: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: CircleAvatar(
              backgroundColor: Theme.of(context).brightness == Brightness.dark
                  ? kblack
                  : kwhite,
              backgroundImage: Theme.of(context).brightness == Brightness.dark
                  ? const AssetImage('assets/img/drink white png.png')
                  : const AssetImage('assets/img/drink black png.png'),
              radius: 2,
            ),
          ),
          title: Text(
            'Hello Admin',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 18),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const NotificationPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      var tween = Tween(
                        begin: const Offset(1.0, 0.0),
                        end: Offset.zero,
                      ).chain(CurveTween(curve: Curves.easeIn));
                      return SlideTransition(
                        position: animation.drive(tween),
                        child: child,
                      );
                    },
                  ));
                },
                icon: const Icon(Icons.notifications_outlined)),
          ],
        ),
        body: ListView(
          children: const [
            SizedBox(
              height: 30,
            ),
            TopContainerWidget(),
            GridPage()
          ],
        ));
  }
}
