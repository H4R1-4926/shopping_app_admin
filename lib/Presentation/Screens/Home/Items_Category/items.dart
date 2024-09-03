import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_admin/Core/colors.dart';
import 'package:shopping_app_admin/Core/size.dart';
import 'package:shopping_app_admin/Presentation/Screens/Home/Items_Category/add_item.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> category = ['All', 'Protiens', 'Creatin', 'Equipments'];
    final TextEditingController categoryController = TextEditingController(
        text: category.isEmpty ? 'No Category' : category[0]);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Items',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 22),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const ItemAddPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      var tween = Tween(
                        begin: const Offset(1.0, 0.0),
                        end: Offset.zero,
                      ).chain(CurveTween(curve: Curves.easeIn));
                      return SlideTransition(
                        position: animation.drive(tween),
                        child: child,
                      );
                    },
                  ));
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
                              },
                            ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(color: klightGrey)),
                      filled: true,
                      fillColor: klightGrey),
                ),
              ),
              kSizedBoxHeight20,
              category.isEmpty
                  ? const Center(
                      child: Text('Selecet An category'),
                    )
                  : DataTable(
                      headingRowColor:
                          const WidgetStatePropertyAll(kdarkbackground),
                      headingTextStyle: GoogleFonts.lato(
                          color: kwhite,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                      dividerThickness: 1,
                      border: const TableBorder(
                          top: BorderSide(),
                          verticalInside: BorderSide(),
                          bottom: BorderSide()),
                      columnSpacing: 32,
                      columns: const [
                        DataColumn(
                          label: Text('No.'),
                        ),
                        DataColumn(
                          label: Text('Item\nName'),
                        ),
                        DataColumn(
                          label: Text('Item\nPrice'),
                        ),
                        DataColumn(
                          label: Text('Category'),
                        ),
                        DataColumn(
                          label: Text('Stock\nStatus'),
                        ),
                        DataColumn(
                          label: Text('{ }'),
                        ),
                      ],
                      rows: List.generate(20, (index) {
                        return DataRow(
                          cells: [
                            DataCell(
                              Text('${index + 1}'),
                            ),
                            const DataCell(
                              Text('Name'),
                            ),
                            const DataCell(
                              Text('999/-'),
                            ),
                            const DataCell(
                              Text('Protien'),
                            ),
                            const DataCell(
                              Text('In Stock',
                                  style: TextStyle(color: Colors.green)),
                            ),
                            const DataCell(
                              Text(
                                'Edit',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 6, 123, 240)),
                              ),
                            ),
                          ],
                        );
                      }),
                    ),
              kSizedBoxHeight30
            ],
          ),
        ));
  }
}
