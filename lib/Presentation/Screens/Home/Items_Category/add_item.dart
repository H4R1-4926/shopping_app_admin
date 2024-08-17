import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_admin/Core/colors.dart';

class ItemAddPage extends StatefulWidget {
  const ItemAddPage({super.key});

  @override
  State<ItemAddPage> createState() => _ItemAddPageState();
}

class _ItemAddPageState extends State<ItemAddPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> category = [
      'Protiens',
      'Creatin',
      'Equipments',
      'Cloths'
    ];
    final TextEditingController categoryController =
        TextEditingController(text: 'Select Category');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Item',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Item Name',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(color: klightGrey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(color: klightGrey)),
                  filled: true,
                  fillColor: klightGrey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Item Description',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(color: klightGrey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(color: klightGrey)),
                  filled: true,
                  fillColor: klightGrey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              controller: categoryController,
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              readOnly: true,
              decoration: InputDecoration(
                  suffixIcon: category.isEmpty
                      ? const SizedBox()
                      : DropdownButton(
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
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(color: klightGrey)),
                  filled: true,
                  fillColor: klightGrey),
            ),
          ),
          Row(children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 10, top: 10, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Kg/Lbs/size',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(color: klightGrey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(color: klightGrey)),
                      filled: true,
                      fillColor: klightGrey),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 10, top: 10, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Price',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(color: klightGrey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(color: klightGrey)),
                      filled: true,
                      fillColor: klightGrey),
                ),
              ),
            ),
          ]),
          Row(children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 10, top: 10, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Color',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(color: klightGrey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(color: klightGrey)),
                      filled: true,
                      fillColor: klightGrey),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 10, top: 10, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Price',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(color: klightGrey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(color: klightGrey)),
                      filled: true,
                      fillColor: klightGrey),
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
