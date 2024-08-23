import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'package:shopping_app_admin/Core/colors.dart';
import 'package:shopping_app_admin/Core/size.dart';
import 'package:shopping_app_admin/Presentation/Login/login.dart';

import 'package:shopping_app_admin/Presentation/Screens/Account/Profile%20Screens/notification_settings.dart';

import 'widgets/listtile_widget.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? kdarkbackground
              : kwhite,
          title: Text(
            'Settings',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 20),
          ),
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
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          Theme.of(context).brightness == Brightness.dark
                              ? kblack
                              : kwhite,
                      backgroundImage: Theme.of(context).brightness ==
                              Brightness.dark
                          ? const AssetImage('assets/img/gym arm white.png')
                          : const AssetImage('assets/img/gym arm black.png'),
                      radius: 55,
                    ),
                    kSizedBoxHeight10,
                    Text(
                      'Person Name',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    Text(
                      '1010101010',
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              indent: 26,
              endIndent: 26,
              color: kGrey.withOpacity(0.3),
            ),
            kSizedBoxHeight10,
            ListTileWidget(
              prefixIcon: Iconsax.notification,
              titleText: 'Notifications',
              ontap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const NotificationSettings(),
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
              trailIcon: true,
            ),
            ListTileWidget(
              prefixIcon: Iconsax.logout,
              iconColour: Colors.red,
              titleText: 'Logout',
              ontap: () {
                showModalBottomSheet(
                  showDragHandle: true,
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.dark
                          ? kdarkbackground
                          : kwhite,
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 190,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? kdarkbackground
                              : kwhite,
                          boxShadow: [
                            BoxShadow(
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? kdarkbackground
                                    : kwhite,
                                blurRadius: 10,
                                spreadRadius: 10),
                          ],
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'Logout',
                              style: GoogleFonts.poppins(
                                  color: Colors.red,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          kSizedBoxHeight10,
                          const Divider(
                            indent: 23,
                            endIndent: 23,
                          ),
                          kSizedBoxHeight20,
                          Center(
                            child: Text(
                              'Are you sure',
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: const ButtonStyle(
                                      surfaceTintColor:
                                          WidgetStatePropertyAll(kwhite),
                                      fixedSize:
                                          WidgetStatePropertyAll(Size(150, 50)),
                                      backgroundColor:
                                          WidgetStatePropertyAll(kwhite),
                                    ),
                                    child: Text(
                                      'cancel',
                                      style: GoogleFonts.lato(
                                          fontSize: 14,
                                          color: kblack,
                                          fontWeight: FontWeight.w700),
                                    )),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginPage(),
                                          ),
                                          (route) => false);
                                    },
                                    style: ButtonStyle(
                                        fixedSize: const WidgetStatePropertyAll(
                                            Size(150, 50)),
                                        backgroundColor:
                                            Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? const WidgetStatePropertyAll(
                                                    kdarkcolor3)
                                                : const WidgetStatePropertyAll(
                                                    kblack),
                                        foregroundColor:
                                            const WidgetStatePropertyAll(
                                                kwhite)),
                                    child: Text(
                                      'yes',
                                      style: GoogleFonts.lato(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              textColour: Colors.red,
              trailIcon: false,
            ),
            const SizedBox(
              height: 130,
            )
          ],
        ));
  }
}
