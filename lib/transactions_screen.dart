import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'drawer.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  final _validationKey = GlobalKey<FormState>();

  TextEditingController dateController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  List<String> title = ["Medicine"];
  List<String> description = ["Lorem Ipsum is simply dummy text of the"];
  List<String> money = ["500"];

  bool isTransactionClicked = false;
  bool isGraphClicked = false;
  bool isCategoryClicked = false;
  bool isTrashClicked = false;
  bool isAboutUsClicked = false;

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

              Form(
                key: _validationKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date",
                      style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(33, 33, 33, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),

                    // date TextField
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        controller: dateController,
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: "Date",
                          suffixIcon: const Icon(Icons.date_range_rounded),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(89, 57, 241, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2023),
                            lastDate: DateTime(2025),
                          );
                          String formatedDate =
                              DateFormat.yMMMd().format(pickedDate!);
                          dateController.text = formatedDate;
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Amount",
                      style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(33, 33, 33, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    // Amount TextField
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        controller: amountController,
                        decoration: InputDecoration(
                          hintText: "Amount",
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
                        fontSize: 16,
                      ),
                    ),
                    // Category TextField
                    const SizedBox(height: 3),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        controller: categoryController,
                        decoration: InputDecoration(
                          hintText: "Category",
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
                      "Description",
                      style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(33, 33, 33, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    // Description TextField
                    const SizedBox(height: 3),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        controller: categoryController,
                        decoration: InputDecoration(
                          hintText: "Description",
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
              const SizedBox(
                height: 30,
              ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "June 2022",
          style: GoogleFonts.poppins(
            fontSize: 19,
            fontWeight: FontWeight.w600,
            color: const Color.fromRGBO(33, 33, 33, 1),
          ),
        ),
        actions: [
          GestureDetector(
            child: SizedBox(
              width: 27,
              height: 27,
              child: Image.asset(
                'assets/images/search.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 8, left: 18, right: 10),
                // color: Colors.amber,
                width: 410,
                height: 64,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(8),
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(0, 174, 91, 0.7),
                      ),
                      child: Image.asset(
                        "assets/images/medicine_white.png",
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 310,
                          child: Row(
                            children: [
                              Text(
                                "Medicine",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              //const SizedBox(width: 170),
                              const Spacer(),
                              const Icon(
                                Icons.remove_circle,
                                color: Colors.red,
                                size: 23,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "500",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the ",
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(0, 0, 0, 0.8),
                          ),
                        ),
                        Container(
                          width: 310,
                          alignment: Alignment.centerRight,
                          child: Text(
                            "3 June | 11:50 AM",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(0, 0, 0, 0.6),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 12),
                  ],
                ),
              ),
              const Divider(),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(67))),
        label: Text(
          "Add Transaction",
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
