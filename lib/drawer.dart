import 'package:expense_manager_app/categories_screen.dart';
import 'package:expense_manager_app/transactions_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'trash_screen.dart';
import 'graph_screen.dart';

class ShowMenu extends StatefulWidget {
  const ShowMenu({super.key});

  @override
  State<ShowMenu> createState() => _ShowMenuState();
}

class _ShowMenuState extends State<ShowMenu> {
  bool isTransactionClicked = false;
  bool isGraphClicked = false;
  bool isCategoryClicked = false;
  bool isTrashClicked = false;
  bool isAboutUsClicked = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 40,
              left: 20,
            ),
            child: Column(
              children: [
                Text(
                  "Expense Manager",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  "Saves all your Transactions",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          // Transaction
          GestureDetector(
            onTap: () {
              setState(() {
                isTransactionClicked = !isTransactionClicked;
              });
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const TransactionScreen(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                color: isTransactionClicked
                    ? const Color.fromRGBO(14, 161, 125, 0.15)
                    : null,
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 22,
                    height: 22,
                    child: Image.asset(
                      'assets/images/transaction.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    "Transaction",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: isTransactionClicked
                          ? const Color.fromRGBO(14, 161, 125, 1)
                          : const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          // Graph
          GestureDetector(
            onTap: () {
              setState(() {
                isGraphClicked = !isGraphClicked;
              });
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const GraphScreen(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                color: isGraphClicked
                    ? const Color.fromRGBO(14, 161, 125, 0.15)
                    : null,
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 22,
                    height: 22,
                    child: Image.asset(
                      'assets/images/graph.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    "Graph",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: isGraphClicked
                          ? const Color.fromRGBO(14, 161, 125, 1)
                          : const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          // Category
          GestureDetector(
            onTap: () {
              setState(() {
                isCategoryClicked = !isCategoryClicked;
              });
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const CategoriesScreen(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                color: isCategoryClicked
                    ? const Color.fromRGBO(14, 161, 125, 0.15)
                    : null,
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 22,
                    height: 22,
                    child: Image.asset(
                      'assets/images/category.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    "Category",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: isCategoryClicked
                          ? const Color.fromRGBO(14, 161, 125, 1)
                          : const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          // Trash
          GestureDetector(
            onTap: () {
              setState(() {
                isTrashClicked = !isTrashClicked;
              });
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const TrashScreen(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                color: isTrashClicked
                    ? const Color.fromRGBO(14, 161, 125, 0.15)
                    : null,
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 22,
                    height: 22,
                    child: Image.asset(
                      'assets/images/trash.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    "Trash",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: isTrashClicked
                          ? const Color.fromRGBO(14, 161, 125, 1)
                          : const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          // About Us
          GestureDetector(
            onTap: () {
              setState(() {
                isAboutUsClicked = !isAboutUsClicked;
              });
            },
            child: Container(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                color: isAboutUsClicked
                    ? const Color.fromRGBO(14, 161, 125, 0.15)
                    : null,
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 22,
                    height: 22,
                    child: Image.asset(
                      'assets/images/profile.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    "About Us",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: isAboutUsClicked
                          ? const Color.fromRGBO(14, 161, 125, 1)
                          : const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
