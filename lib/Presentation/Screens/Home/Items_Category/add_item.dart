import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_admin/Application/Widget%20Blocs/Visible%20Widget/visible_bloc.dart';
import 'package:shopping_app_admin/Core/colors.dart';

class ItemAddPage extends StatelessWidget {
  const ItemAddPage({super.key});

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
    String? value;
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        return context.read<VisibleBloc>().add(OnChanged(value: value));
      },
    );
    return BlocBuilder<VisibleBloc, VisibleState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Add Item',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  maxLines: 5,
                  maxLength: 200,
                  decoration: InputDecoration(
                      counterText: ' ',
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                              iconEnabledColor: Theme.of(context).brightness ==
                                      Brightness.dark
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
                                if (categoryController.text == 'Protiens') {
                                  state.isVisible == true;
                                }
                              },
                            ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(color: klightGrey)),
                      filled: true,
                      fillColor: klightGrey),
                ),
              ),
              Visibility(
                visible: state.isVisible,
                child: Row(children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 10, top: 10, bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Kg/Lbs/size',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide:
                                    const BorderSide(color: klightGrey)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide:
                                    const BorderSide(color: klightGrey)),
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
                                borderSide:
                                    const BorderSide(color: klightGrey)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide:
                                    const BorderSide(color: klightGrey)),
                            filled: true,
                            fillColor: klightGrey),
                      ),
                    ),
                  ),
                ]),
              ),
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
      },
    );
  }
}
