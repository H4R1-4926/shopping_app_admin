import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_admin/Core/colors.dart';
import 'package:shopping_app_admin/Core/size.dart';

import 'package:shopping_app_admin/Presentation/Screens/Home/hompage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 15),
            child: Text(
              'Welcome Back',
              style:
                  GoogleFonts.inter(fontSize: 45, fontWeight: FontWeight.bold),
            ),
          ),
          kSizedBoxHeight20,
          Center(
            child: CircleAvatar(
              backgroundColor: Theme.of(context).brightness == Brightness.dark
                  ? kblack
                  : kwhite,
              radius: 80,
              backgroundImage: Theme.of(context).brightness == Brightness.dark
                  ? const AssetImage('assets/img/gym arm white.png')
                  : const AssetImage('assets/img/gym arm black.png'),
            ),
          ),
          kSizedBoxHeight20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              cursorColor: kblack,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 20, right: 15),
                    child: Icon(Icons.person_outline),
                  ),
                  prefixIconColor: Colors.grey,
                  hintText: 'Username',
                  hintStyle: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 120, 119, 119),
                      fontWeight: FontWeight.bold),
                  fillColor: Theme.of(context).brightness == Brightness.dark
                      ? kdarkcolor3
                      : klightGrey,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          kSizedBoxHeight40,
          kSizedBoxHeight20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              cursorColor: kblack,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 20, right: 15),
                    child: Icon(Icons.lock_outline),
                  ),
                  prefixIconColor: Colors.grey,
                  hintText: 'Password',
                  hintStyle: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 120, 119, 119),
                      fontWeight: FontWeight.bold),
                  fillColor: Theme.of(context).brightness == Brightness.dark
                      ? kdarkcolor3
                      : klightGrey,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          kSizedBoxHeight40,
          kSizedBoxHeight30,
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
              },
              child: Container(
                height: 55,
                width: 300,
                decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? kdarkcolor1
                        : kblack,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    'Login',
                    style: GoogleFonts.poppins(
                        color: kwhite, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
        ]));
  }
}
