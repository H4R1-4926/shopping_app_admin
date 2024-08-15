import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_admin/Core/colors.dart';
import 'package:shopping_app_admin/Core/img.dart';
import 'package:shopping_app_admin/Core/size.dart';

class CheckOrderPage extends StatelessWidget {
  const CheckOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: klightGrey,
      appBar: AppBar(
        title: Text(
          'Order Number - 123456',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Container(
                height: 330,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kwhite, borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(kDummyImg))),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Name of Product',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15),
                                ),
                                kSizedBoxHeight20,
                                Text(
                                  'Description',
                                  style: GoogleFonts.lato(
                                      fontWeight: FontWeight.bold,
                                      color: kGrey.withOpacity(0.9)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(
                        indent: 20,
                        endIndent: 20,
                        color: kGrey.withOpacity(0.5),
                      ),
                      Center(
                        child: Text(
                          'Product Description',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      kSizedBoxHeight10,
                      Text(
                        'Text 1 (Qunatity)',
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      kSizedBoxHeight5,
                      Text(
                        'Text 2 (Kg / Lbs)',
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      kSizedBoxHeight5,
                      Text(
                        'Text 3 (Colors etc)',
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      kSizedBoxHeight5,
                      Text(
                        'Price: 999/-',
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      kSizedBoxHeight5,
                      Text(
                        'Total receipt Price',
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kwhite,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          'Name & Address',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      kSizedBoxHeight10,
                      Text(
                        'Name and Address Variables (name\nplace\ncity\nlandmark\netc..)',
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      kSizedBoxHeight5,
                      Text(
                        'Phone (1234567899)',
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            kSizedBoxHeight10,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kwhite,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          'Payement & Shipping Method',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      kSizedBoxHeight10,
                      Text(
                        'Payement (UPI/COD/Transaction ID)',
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      kSizedBoxHeight5,
                      Text(
                        'Shipping Method : (1,2,3)',
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 110,
            )
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? kdarkbackground
                : kwhite,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Center(
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  fixedSize: const WidgetStatePropertyAll(Size(310, 60)),
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.dark
                          ? const WidgetStatePropertyAll(kdarkcolor3)
                          : const WidgetStatePropertyAll(kblack),
                  foregroundColor: const WidgetStatePropertyAll(kwhite),
                  elevation: const WidgetStatePropertyAll(10)),
              child: Text(
                'Proceed with order',
                style: GoogleFonts.lato(
                    color: kwhite, fontWeight: FontWeight.bold, fontSize: 14),
              )),
        ),
      ),
    );
  }
}
