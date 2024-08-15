import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_admin/Core/colors.dart';
import 'package:shopping_app_admin/Presentation/Screens/Orders/Check%20Order/check_order_page.dart';

class NewOrderPage extends StatelessWidget {
  const NewOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? kdarkbackground
            : klightGrey,
        body: ListView(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: ListTile(
                      tileColor: kwhite,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22)),
                      title: Text(
                        'New Order Recieved',
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w900, fontSize: 15),
                      ),
                      subtitle: Text(
                        'From {Person Name}',
                        style: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      trailing: SizedBox(
                        width: 110,
                        height: 50,
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(kblack)),
                          onPressed: () {
                            Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const CheckOrderPage(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
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
                          child: Center(
                            child: Text(
                              'Proceed',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: kwhite),
                            ),
                          ),
                        ),
                      ),
                    ));
              },
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ));
  }
}
