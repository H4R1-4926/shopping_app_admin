import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopping_app_admin/Core/colors.dart';
import 'package:shopping_app_admin/Core/lists.dart';

class CarousalManager extends StatefulWidget {
  const CarousalManager({super.key});

  @override
  State<CarousalManager> createState() => _CarousalManagerState();
}

final TextEditingController maxWidthController = TextEditingController();
final TextEditingController maxHeightController = TextEditingController();
final TextEditingController qualityController = TextEditingController();
String? _retrieveDataError;

class _CarousalManagerState extends State<CarousalManager> {
  XFile? _image;
  dynamic _pickImageError;
  final ImagePicker _picker = ImagePicker();

  Future<void> addButtonPressed(ImageSource source) async {
    await imagePreview(context,
        (double? maxWidth, double? maxHeight, int? quality) async {
      try {
        final XFile? pickedFile = await _picker.pickImage(
            source: source,
            maxHeight: maxHeight,
            maxWidth: maxHeight,
            imageQuality: quality);
        setState(() {
          _image = pickedFile;
        });
      } catch (e) {
        _pickImageError = e;
      }
    });
  }

  @override
  void dispose() {
    maxWidthController.dispose();
    maxHeightController.dispose();
    qualityController.dispose();
    super.dispose();
  }

  Widget _previewImages() {
    final Text? retrieveError = _getRetrieveErrorWidget();
    if (retrieveError != null) {
      return retrieveError;
    }
    if (_image != null) {
      return Semantics(
        label: 'image_picker_example_picked_images',
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              color: klightGrey,
              surfaceTintColor: klightGrey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.file(
                    File(_image!.path),
                    errorBuilder: (BuildContext context, Object error,
                        StackTrace? stackTrace) {
                      return const Center(
                          child: Text('This image type is not supported'));
                    },
                    width: 160,
                    height: 100,
                  ),
                  // Container(
                  //   margin: const EdgeInsets.all(20),
                  //   width: 160,
                  //   height: 100,
                  //   decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //           fit: BoxFit.cover,
                  //           image: AssetImage(kcarousalList[index])),
                  //       borderRadius: BorderRadius.circular(15)),
                  // ),
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
                                                  WidgetStatePropertyAll(
                                                      kwhite),
                                              fixedSize: WidgetStatePropertyAll(
                                                  Size(150, 50)),
                                              backgroundColor:
                                                  WidgetStatePropertyAll(
                                                      kwhite),
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
                                                backgroundColor: Theme.of(
                                                                context)
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
    } else if (_pickImageError != null) {
      return Text(
        'Pick image error: $_pickImageError',
        textAlign: TextAlign.center,
      );
    } else {
      return const Text(
        'You have not yet picked an image.',
        textAlign: TextAlign.center,
      );
    }
  }

  Future<void> retrieveLostData() async {
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      _image = response.file;
    } else {
      _retrieveDataError = response.exception!.code;
    }
  }

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
                addButtonPressed(ImageSource.gallery);
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
      body:
          // FutureBuilder<void>(
          //   future: retrieveLostData(),
          //   builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          //     switch (snapshot.connectionState) {
          //       case ConnectionState.none:
          //       case ConnectionState.waiting:
          //         return const Text(
          //           'You have not yet picked an image.',
          //           textAlign: TextAlign.center,
          //         );
          //       case ConnectionState.done:
          //         return _previewImages();
          //       case ConnectionState.active:
          //         if (snapshot.hasError) {
          //           return Text(
          //             'Pick image/video error: ${snapshot.error}}',
          //             textAlign: TextAlign.center,
          //           );
          //         } else {
          //           return const Text(
          //             'You have not yet picked an image.',
          //             textAlign: TextAlign.center,
          //           );
          //         }
          //     }
          //   },
          // )

          ListView.builder(
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

Text? _getRetrieveErrorWidget() {
  if (_retrieveDataError != null) {
    final Text result = Text(_retrieveDataError!);
    _retrieveDataError = null;
    return result;
  }
  return null;
}

Future<void> imagePreview(
    BuildContext context, OnPickImageCallback onPick) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add optional parameters'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                controller: maxWidthController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                    hintText: 'Enter maxWidth if desired'),
              ),
              TextField(
                controller: maxHeightController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                    hintText: 'Enter maxHeight if desired'),
              ),
              TextField(
                controller: qualityController,
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(hintText: 'Enter quality if desired'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
                child: const Text('PICK'),
                onPressed: () {
                  final double? width = maxWidthController.text.isNotEmpty
                      ? double.parse(maxWidthController.text)
                      : null;
                  final double? height = maxHeightController.text.isNotEmpty
                      ? double.parse(maxHeightController.text)
                      : null;
                  final int? quality = qualityController.text.isNotEmpty
                      ? int.parse(qualityController.text)
                      : null;

                  onPick(
                    width,
                    height,
                    quality,
                  );
                  Navigator.of(context).pop();
                }),
          ],
        );
      });
}

typedef OnPickImageCallback = void Function(
    double? maxWidth, double? maxHeight, int? quality);
