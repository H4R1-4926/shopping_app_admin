import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopping_app_admin/Core/colors.dart';
import 'package:shopping_app_admin/Core/lists.dart';

class CarousalManager extends StatelessWidget {
  const CarousalManager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Carousal Manager',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
              onPressed: () {
                final picker = ImagePicker();
                picker.pickMedia();
              },
              icon: Icon(
                size: 35,
                Icons.add,
                color: Theme.of(context).brightness == Brightness.dark
                    ? kwhite
                    : kblack,
              ))
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            color: klightGrey,
            surfaceTintColor: klightGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  width: 160,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(kcarousalList[index])),
                      borderRadius: BorderRadius.circular(15)),
                ),
                IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        showDragHandle: true,
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 140,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? kdarkbackground
                                    : klightGrey,
                                boxShadow: [
                                  BoxShadow(
                                      color: Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? kdarkbackground
                                          : klightGrey,
                                      blurRadius: 10,
                                      spreadRadius: 10)
                                ]),
                            child: Column(
                              children: [
                                Text(
                                  'Are you sure to remove',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Divider(
                                  indent: 23,
                                  endIndent: 23,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          style: const ButtonStyle(
                                            surfaceTintColor:
                                                WidgetStatePropertyAll(kwhite),
                                            fixedSize: WidgetStatePropertyAll(
                                                Size(150, 50)),
                                            backgroundColor:
                                                WidgetStatePropertyAll(kwhite),
                                          ),
                                          child: Text(
                                            'No',
                                            style: GoogleFonts.lato(
                                                fontSize: 14, color: kblack),
                                          )),
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          style: ButtonStyle(
                                              fixedSize:
                                                  const WidgetStatePropertyAll(
                                                      Size(150, 50)),
                                              backgroundColor: Theme.of(context)
                                                          .brightness ==
                                                      Brightness.dark
                                                  ? const WidgetStatePropertyAll(
                                                      kdarkcolor3)
                                                  : const WidgetStatePropertyAll(
                                                      kblack),
                                              foregroundColor:
                                                  const WidgetStatePropertyAll(
                                                      kwhite)),
                                          child: Text(
                                            'Yes',
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
                    icon: const Icon(
                      Iconsax.trash,
                      size: 30,
                      color: kblack,
                    ))
              ],
            ),
          );
        },
        itemCount: kcarousalList.length,
      ),
    );
  }
}
