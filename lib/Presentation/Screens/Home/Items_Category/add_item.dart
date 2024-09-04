// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopping_app_admin/Application/Widget%20Blocs/Color%20Widget/color_bloc.dart';
import 'package:shopping_app_admin/Application/Widget%20Blocs/Image%20Widget/image_bloc.dart';
import 'package:shopping_app_admin/Application/Widget%20Blocs/Visible%20Widget/visible_bloc.dart';
import 'package:shopping_app_admin/Core/colors.dart';

class ItemAddPage extends StatelessWidget {
  const ItemAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _picker = ImagePicker();
    final TextEditingController categoryController =
        TextEditingController(text: 'Select Category');
    final TextEditingController sizeController =
        TextEditingController(text: 'Size');
    final TextEditingController textController = TextEditingController();
    final List<String> category = [
      'Protiens',
      'Creatin',
      'Equipments',
      'Cloths'
    ];
    final List<String> size = [
      'S',
      'M',
      'L',
      'XL',
      'XXL',
    ];
    // List<String>? text = [];
    // List<TextEditingController>? controllerList = [];

    return BlocBuilder<VisibleBloc, VisibleState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          extendBody: true,
          appBar: AppBar(
            backgroundColor: kwhite,
            surfaceTintColor: kwhite,
            title: Text(
              'Add Item',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          body: CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: Padding(
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
            ),
            SliverToBoxAdapter(
              child: Padding(
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
            ),
            SliverToBoxAdapter(
              child: Padding(
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
            ),
            SliverToBoxAdapter(
              child: Visibility(
                visible: state.isTrue == true ? false : true,
                child: Row(children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 10, top: 10, bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Kg/Lbs',
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
            ),
            SliverToBoxAdapter(
              child: Visibility(
                visible: state.isTrue,
                child: Row(children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 10, top: 10, bottom: 10),
                      child: TextField(
                        readOnly: true,
                        controller: sizeController,
                        decoration: InputDecoration(
                            suffixIcon: DropdownButton(
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
                              items: size
                                  .map((e) => DropdownMenuItem(
                                        value: e,
                                        child: Text(e),
                                      ))
                                  .toList(),
                              onChanged: (value) {
                                sizeController.text = value.toString();
                                context.read<VisibleBloc>().add(OnChanged(
                                    category: categoryController.text));
                              },
                            ),
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
            ),
            SliverToBoxAdapter(
              child: Visibility(
                visible: state.isTrue,
                child: Row(children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 230, top: 10, bottom: 10),
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
            ),
            SliverToBoxAdapter(
              child: Visibility(
                visible: state.isTrue,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                                          title: const Text('Pick color'),
                                          content: ColorPicker(
                                            pickerColor: const Color.fromARGB(
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

                                                  Navigator.pop(context);
                                                },
                                                child: const Text('Select'))
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
                          child: BlocBuilder<ColorBloc, ColorState>(
                            builder: (context, state) {
                              if (state.colors.isEmpty) {
                                return const Center(
                                    child: Text('<-   Choose Color',
                                        style: TextStyle(fontSize: 20)));
                              }
                              return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: state.colors.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: CircleAvatar(
                                      radius: 35,
                                      backgroundColor: state.colors[index],
                                    ),
                                  );
                                },
                              );
                            },
                          )),
                    ),
                  ),
                ]),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                child: BlocBuilder<ImageBloc, ImageState>(
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
                                    onPressed: () async {
                                      final pickedImages =
                                          await _picker.pickMultiImage();
                                      // ignore: use_build_context_synchronously
                                      context
                                          .read<ImageBloc>()
                                          .add(Pick(pickedImage: pickedImages));

                                      // showDialog(
                                      //     context: context,
                                      //     builder: (context) {
                                      //       Color? color;
                                      //       return Column(
                                      //         children: [
                                      //           AlertDialog(
                                      //             title: const Text('Pick color'),
                                      //             content: ColorPicker(
                                      //               pickerColor: const Color.fromARGB(
                                      //                   255, 78, 114, 0),
                                      //               onColorChanged: (value) {
                                      //                 color = value;
                                      //               },
                                      //             ),
                                      //             actions: [
                                      //               TextButton(
                                      //                   onPressed: () {
                                      //                     context
                                      //                         .read<ColorBloc>()
                                      //                         .add(Add(color!));

                                      //                     Navigator.pop(context);
                                      //                   },
                                      //                   child: const Text('Select'))
                                      //             ],
                                      //           ),
                                      //         ],
                                      //       );
                                      //     });
                                    },
                                    icon: const Icon(
                                      Iconsax.camera,
                                      size: 32,
                                    )),
                              )),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 10, top: 10, bottom: 10),
                              child: LimitedBox(
                                  maxHeight: 80,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: state.mediaFileList!.length,
                                    itemBuilder: (context, index) {
                                      final images =
                                          state.mediaFileList![index];
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: GestureDetector(
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (context) => AlertDialog(
                                                          title: const Center(
                                                              child: Text(
                                                                  'Selected Image')),
                                                          content: Container(
                                                            height: 400,
                                                            width: 450,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15),
                                                                image: DecorationImage(
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    image: FileImage(
                                                                        File(images
                                                                            .path)))),
                                                          ),
                                                          actions: [
                                                            TextButton(
                                                                onPressed: () {
                                                                  showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              const Center(child: Text('Are you sure to remove?')),
                                                                          actions: [
                                                                            TextButton(
                                                                                onPressed: () {
                                                                                  Navigator.pop(context);
                                                                                },
                                                                                child: const Text(
                                                                                  'No',
                                                                                  style: TextStyle(color: kblack),
                                                                                )),
                                                                            TextButton(
                                                                                onPressed: () {
                                                                                  Navigator.pop(context);
                                                                                },
                                                                                child: const Text(
                                                                                  'Yes',
                                                                                  style: TextStyle(color: kblack),
                                                                                ))
                                                                          ],
                                                                        );
                                                                      });
                                                                },
                                                                child:
                                                                    const Text(
                                                                  'Delete',
                                                                  style: TextStyle(
                                                                      color:
                                                                          kblack),
                                                                )),
                                                            TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child:
                                                                    const Text(
                                                                  'Ok',
                                                                  style: TextStyle(
                                                                      color:
                                                                          kblack),
                                                                ))
                                                          ],
                                                        ));
                                          },
                                          child: Container(
                                            height: 80,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: FileImage(
                                                        File(images.path))),
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                          ),
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
            ),
            BlocBuilder<VisibleBloc, VisibleState>(
              builder: (context, state) {
                log(state.texts.length.toString());
                return SliverGrid.builder(
                  itemCount: state.texts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 2.8),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: state.texts[index],
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
                    );
                  },
                );
              },
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 80,
              ),
            )
          ]),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 45),
            child: FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: TextField(
                        controller: textController,
                        decoration: InputDecoration(
                            hintText: 'Enter Label',
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
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Cancel',
                              style: TextStyle(color: kblack),
                            )),
                        TextButton(
                            onPressed: () {
                              if (textController.text.isNotEmpty) {
                                context
                                    .read<VisibleBloc>()
                                    .add(OnAdded(text: textController.text));
                                Navigator.pop(context);
                                textController.clear();
                              }
                              // log(state.texts.toString());
                              // log(state.texts.length.toString());
                            },
                            child: const Text(
                              'Add',
                              style: TextStyle(color: kblack),
                            ))
                      ],
                    );
                  },
                );
              },
              backgroundColor: kblack,
              child: const Icon(
                Iconsax.add,
                color: kwhite,
                size: 35,
              ),
            ),
          ),
          bottomSheet: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                  color: kblack, borderRadius: BorderRadius.circular(20)),
            ),
          ),
        );
      },
    );
  }
}
