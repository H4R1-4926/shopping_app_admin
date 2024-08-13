import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_admin/Core/colors.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> category = ['All', 'Protiens', 'Creatin', 'Equipments'];
    final TextEditingController categoryController =
        TextEditingController(text: category[0]);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Items',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 22),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  size: 35,
                  Icons.add,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? kwhite
                      : kblack,
                ))
          ],
        ),
        body: Column(
          children: [
            ListTile(
              leading: Text(
                'Category',
                style: GoogleFonts.poppins(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? kwhite
                        : kblack,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              trailing: SizedBox(
                width: 200,
                height: 200,
                child: TextField(
                    controller: categoryController,
                    readOnly: true,
                    style: GoogleFonts.poppins(),
                    decoration: InputDecoration(
                        suffix: Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: DropdownButton(
                            underline: const SizedBox(),
                            icon: const Icon(Icons.arrow_drop_down_rounded),
                            iconEnabledColor:
                                Theme.of(context).brightness == Brightness.dark
                                    ? kGrey
                                    : kblack,
                            iconSize: 32,
                            borderRadius: BorderRadius.circular(18),
                            style: GoogleFonts.lato(
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? kwhite
                                    : kblack,
                                fontWeight: FontWeight.bold),
                            items: category
                                .map((e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              categoryController.text = value.toString();
                            },
                          ),
                        ),
                        filled: true,
                        fillColor: klightGrey,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19),
                            borderSide: const BorderSide(color: klightGrey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19),
                            borderSide: const BorderSide(color: klightGrey)))),
              ),
            )
          ],
        ));
  }
}
