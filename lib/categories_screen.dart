import 'package:expense_manager_app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final _validationKey = GlobalKey<FormState>();

  TextEditingController urlController = TextEditingController();
  TextEditingController categoryController = TextEditingController();

  List<String> titlesList = ["Food", "Fuel", "Medicine", "Shopping"];

  List<Color> colorsList = [
    const Color.fromRGBO(214, 3, 3, 0.7),
    const Color.fromRGBO(0, 148, 255, 0.7),
    const Color.fromRGBO(0, 174, 91, 0.7),
    const Color.fromRGBO(241, 38, 197, 0.7),
  ];

  List<String> imagesList = [
    "assets/images/food.png",
    "assets/images/fuel.png",
    "assets/images/medicine_white.png",
    "assets/images/shopping.png",
  ];

  Future<void> bottomSheet() {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 34,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Column(
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(140, 128, 128, 0.2),
                      ),
                      child: Image.asset('assets/images/icon.png'),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Add",
                      style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Form(
                key: _validationKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Image URL",
                      style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(33, 33, 33, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),

                    // Image URL TextField
                    SizedBox(
                      height: 45,
                      child: TextFormField(
                        controller: urlController,
                        decoration: InputDecoration(
                          hintText: "Enter URL",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(89, 57, 241, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Text(
                      "Category",
                      style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(33, 33, 33, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    // Category TextField
                    const SizedBox(height: 6),
                    SizedBox(
                      height: 45,
                      child: TextFormField(
                        controller: categoryController,
                        decoration: InputDecoration(
                          hintText: "Enter category name",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(89, 57, 241, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // Submit button

              SizedBox(
                height: 50,
                width: 130,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60)),
                    backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Add",
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  Future<void> showAlertBox() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            textAlign: TextAlign.center,
            "Delete Category",
            style: GoogleFonts.poppins(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          content: Text(
            textAlign: TextAlign.center,
            "Are you sure you want to delete the selected category?",
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          actions: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(14, 161, 125, 1))),
                child: Text(
                  "Delete",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(255, 255, 255, 1))),
                child: Text(
                  "Cancel",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ),
            ])
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categories",
          style: GoogleFonts.poppins(
            fontSize: 19,
            fontWeight: FontWeight.w600,
            color: const Color.fromRGBO(33, 33, 33, 1),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          right: 23,
          left: 23,
          bottom: 23,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemCount: titlesList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onLongPress: () {
                showAlertBox();
              },
              child: Container(
                // padding: const EdgeInsets.only(top: 25),
                width: 145,
                height: 150,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(1, 2),
                        blurRadius: 8),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colorsList[index],
                      ),
                      child: Image.asset(
                        imagesList[index],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      titlesList[index],
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(33, 33, 33, 1),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(67))),
        label: Text(
          "Add Category",
          style: GoogleFonts.poppins(
            color: const Color.fromRGBO(37, 37, 37, 1),
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
        icon: const Icon(
          Icons.add_circle,
          color: Color.fromRGBO(14, 161, 125, 1),
          size: 50,
        ),
        onPressed: () {
          setState(() {
            bottomSheet();
          });
        },
        elevation: 10,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: const ShowMenu(),
    );
  }
}
