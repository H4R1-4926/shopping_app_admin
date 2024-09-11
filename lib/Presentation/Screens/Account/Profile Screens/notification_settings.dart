import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_admin/Core/colors.dart';

import '../widgets/switch_widget.dart';

class NotificationSettings extends StatelessWidget {
  const NotificationSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: kwhite,
        backgroundColor: kwhite,
        title: Text(
          'Notification',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ListTileWidget(title: 'Genaral'),
          ],
        ),
      ),
    );
  }
}
