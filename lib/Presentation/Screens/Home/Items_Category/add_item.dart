import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_admin/Application/Widget%20Blocs/Color%20Widget/color_bloc.dart';
import 'package:shopping_app_admin/Application/Widget%20Blocs/Visible%20Widget/visible_bloc.dart';
import 'package:shopping_app_admin/Core/colors.dart';

class ItemAddPage extends StatelessWidget {
  const ItemAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController categoryController =
        TextEditingController(text: 'Select Category');
    final List<String> category = [
      'Protiens',
      'Creatin',
      'Equipments',
      'Cloths'
    ];
    // WidgetsBinding.instance.addPostFrameCallback(
    //   (_) {
    //     return
    //   },
    // );
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
                                context.read<VisibleBloc>().add(OnChanged(
                                    category: categoryController.text));
                              },
                            ),
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
              Row(children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 10, top: 10, bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Kg/Lbs',
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
              Visibility(
                visible: state.isTrue,
                child: Row(children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 10, top: 10, bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Size',
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
                            hintText: 'Material',
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
              Visibility(
                visible: state.isTrue,
                child: BlocBuilder<ColorBloc, ColorState>(
                  builder: (context, state) {
                    return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 10, top: 10, bottom: 10),
                              child: CircleAvatar(
                                radius: 35,
                                backgroundColor: klightGrey,
                                child: IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            Color? color;
                                            return Column(
                                              children: [
                                                AlertDialog(
                                                  title:
                                                      const Text('Pick color'),
                                                  content: ColorPicker(
                                                    pickerColor:
                                                        const Color.fromARGB(
                                                            255, 78, 114, 0),
                                                    onColorChanged: (value) {
                                                      color = value;
                                                    },
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                        onPressed: () {
                                                          context
                                                              .read<ColorBloc>()
                                                              .add(Add(color!));

                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: const Text(
                                                            'Select'))
                                                  ],
                                                ),
                                              ],
                                            );
                                          });
                                    },
                                    icon: const Icon(
                                      Iconsax.add,
                                      size: 40,
                                    )),
                              )),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 10, top: 10, bottom: 10),
                              child: LimitedBox(
                                  maxHeight: 80,
                                  child: state.colors.isEmpty
                                      ? const Center(
                                          child: Text('<-   Choose Color'))
                                      : ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          shrinkWrap: true,
                                          itemCount: state.colors.length,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: CircleAvatar(
                                                radius: 35,
                                                backgroundColor:
                                                    state.colors[index],
                                              ),
                                            );
                                          },
                                        )),
                            ),
                          ),
                        ]);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
