import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_admin/Core/colors.dart';
import 'package:shopping_app_admin/Core/size.dart';

enum AddressType { addNewAddress, editAddress }

extension AddressName on AddressType {
  String get displayAddressType {
    switch (this) {
      case AddressType.addNewAddress:
        return 'Add New Address';
      case AddressType.editAddress:
        return 'Edit Address';

      default:
        return '';
    }
  }
}

class AddressEditOrCreate extends StatelessWidget {
  final AddressType type;
  const AddressEditOrCreate({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: kwhite,
        automaticallyImplyLeading: true,
        backgroundColor: kwhite,
        title: Text(
          type.displayAddressType,
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: ListView(
        children: [
          kSizedBoxHeight40,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'House/Building Name/Flat/Building No.',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          kSizedBoxHeight5,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: kblack,
              maxLength: 30,
              maxLines: 1,
              autofocus: false,
              style: GoogleFonts.lato(),
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  counterText: '',
                  hintStyle: GoogleFonts.lato(),
                  hintText: 'eg: building number: 47',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 243, 243, 243)),
            ),
          ),
          kSizedBoxHeight30,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Street Name/Colony Name',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          kSizedBoxHeight5,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: kblack,
              maxLength: 30,
              maxLines: 1,
              autofocus: false,
              style: GoogleFonts.lato(),
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  counterText: '',
                  hintStyle: GoogleFonts.lato(),
                  hintText: 'eg: Maple Avenue',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 243, 243, 243)),
            ),
          ),
          kSizedBoxHeight30,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'City Name',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          kSizedBoxHeight5,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: kblack,
              maxLength: 30,
              maxLines: 1,
              autofocus: false,
              style: GoogleFonts.lato(),
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  counterText: '',
                  hintStyle: GoogleFonts.lato(),
                  hintText: 'eg: Springfield',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 243, 243, 243)),
            ),
          ),
          kSizedBoxHeight30,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Landmark',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          kSizedBoxHeight5,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: kblack,
              maxLength: 30,
              maxLines: 1,
              autofocus: false,
              style: GoogleFonts.lato(),
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  counterText: '',
                  hintStyle: GoogleFonts.lato(),
                  hintText: 'eg: near Liberty Tower',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 243, 243, 243)),
            ),
          ),
          kSizedBoxHeight30,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'District',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          kSizedBoxHeight5,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: kblack,
              maxLength: 30,
              maxLines: 1,
              autofocus: false,
              style: GoogleFonts.lato(),
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  counterText: '',
                  hintStyle: GoogleFonts.lato(),
                  hintText: 'eg: Kensington ',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 243, 243, 243)),
            ),
          ),
          kSizedBoxHeight30,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Pincode',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          kSizedBoxHeight5,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: kblack,
              maxLength: 30,
              maxLines: 1,
              autofocus: false,
              style: GoogleFonts.lato(),
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  counterText: '',
                  hintStyle: GoogleFonts.lato(),
                  hintText: 'eg: 68*0*0',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 243, 243, 243)),
            ),
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        decoration: const BoxDecoration(
            color: kwhite,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: const ButtonStyle(
                fixedSize: MaterialStatePropertyAll(Size(310, 50)),
                backgroundColor: MaterialStatePropertyAll(kblack),
                foregroundColor: MaterialStatePropertyAll(kwhite),
                elevation: MaterialStatePropertyAll(10)),
            child: Text(
              'Apply',
              style: GoogleFonts.lato(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
