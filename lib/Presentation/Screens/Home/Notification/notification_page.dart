import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_admin/Core/colors.dart';
import 'package:shopping_app_admin/Core/size.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? kdarkbackground
          : klightGrey,
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? kdarkbackground
            : klightGrey,
        surfaceTintColor: Theme.of(context).brightness == Brightness.dark
            ? kdarkbackground
            : klightGrey,
        title: Text(
          'Notification',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          backgroundColor: kwhite,
                          title: Center(
                            child: Text(
                              'New Notification',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          content: SizedBox(
                            height: 240,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  child: TextField(
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                        hintText: 'Title',
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: klightGrey),
                                            borderRadius:
                                                BorderRadius.circular(22)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: klightGrey),
                                            borderRadius:
                                                BorderRadius.circular(22)),
                                        fillColor: klightGrey,
                                        filled: true),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  child: TextField(
                                    maxLines: 2,
                                    decoration: InputDecoration(
                                        hintText: 'Description',
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: klightGrey),
                                            borderRadius:
                                                BorderRadius.circular(22)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: klightGrey),
                                            borderRadius:
                                                BorderRadius.circular(22)),
                                        fillColor: klightGrey,
                                        filled: true),
                                  ),
                                ),
                                const DropButton(),
                              ],
                            ),
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: const ButtonStyle(
                                      surfaceTintColor:
                                          WidgetStatePropertyAll(kwhite),
                                      fixedSize:
                                          WidgetStatePropertyAll(Size(100, 50)),
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
                                        fixedSize: const WidgetStatePropertyAll(
                                            Size(100, 50)),
                                        backgroundColor:
                                            Theme.of(context).brightness ==
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
                          ],
                        ));
              },
              icon: Icon(
                size: 30,
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
            margin: const EdgeInsets.only(bottom: 15),
            elevation: 0,
            color: Theme.of(context).brightness == Brightness.dark
                ? kdarkbackground
                : klightGrey,
            surfaceTintColor: Theme.of(context).brightness == Brightness.dark
                ? kdarkbackground
                : klightGrey,
            borderOnForeground: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Date',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                kSizedBoxHeight5,
                Center(
                  child: Container(
                    width: 340,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? kdarkcolor1
                            : kwhite,
                        borderRadius: BorderRadius.circular(18)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          maxRadius: 36,
                          backgroundColor:
                              Theme.of(context).brightness == Brightness.dark
                                  ? kblack
                                  : kwhite,
                          child: Center(
                            child: Icon(
                              Icons.percent,
                              size: 35,
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? kwhite
                                  : kblack,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              maxLines: 1,
                              'Title Goes Here',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                            Text(
                              'Description Goes Here',
                              style: GoogleFonts.lato(fontSize: 13),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}

class DropButton extends StatefulWidget {
  const DropButton({
    super.key,
  });

  @override
  State<DropButton> createState() => _DropState();
}

class _DropState extends State<DropButton> {
  final List iconsList = [
    Icons.percent,
    Icons.money_outlined,
    Icons.local_offer_outlined
  ];
  IconData? icon = Icons.percent;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(icon),
        trailing: DropdownButton(
          dropdownColor: kwhite,
          underline: const SizedBox(),
          icon: const Icon(Icons.arrow_drop_down_rounded),
          iconEnabledColor:
              Theme.of(context).brightness == Brightness.dark ? kGrey : kblack,
          iconSize: 32,
          borderRadius: BorderRadius.circular(18),
          style: GoogleFonts.lato(
              color: Theme.of(context).brightness == Brightness.dark
                  ? kwhite
                  : kblack,
              fontWeight: FontWeight.bold),
          items: iconsList
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Icon(e),
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              icon = value as IconData?;
            });
          },
        ));
  }
}
