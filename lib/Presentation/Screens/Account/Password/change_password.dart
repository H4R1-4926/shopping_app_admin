import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_admin/Core/colors.dart';
import 'package:shopping_app_admin/Core/size.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: kwhite,
        backgroundColor: kwhite,
        title: Text(
          'Change Password',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                cursorColor: kblack,
                keyboardType: TextInputType.visiblePassword,
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
                    hintText: 'Old Password',
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
          ),
          kSizedBoxHeight40,
          kSizedBoxHeight10,
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                cursorColor: kblack,
                keyboardType: TextInputType.visiblePassword,
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
                    hintText: 'New Password',
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
          ),
          kSizedBoxHeight20,
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                cursorColor: kblack,
                keyboardType: TextInputType.visiblePassword,
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
                    hintText: 'Confirm Password',
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
          ),
          kSizedBoxHeight20,
          Flexible(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
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
                    'Save',
                    style: GoogleFonts.poppins(
                        color: kwhite, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
