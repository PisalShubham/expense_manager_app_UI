import 'package:expense_manager_app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  List<String> categories = [
    "Food",
    "Fuel",
    "Medicine",
    "Entertainment",
    "Shopping",
    "Club"
  ];

  List<Color> colorsList = [
    const Color.fromRGBO(214, 3, 3, 0.7),
    const Color.fromRGBO(0, 148, 255, 0.7),
    const Color.fromRGBO(0, 174, 91, 0.7),
    const Color.fromRGBO(100, 62, 255, 0.7),
    const Color.fromRGBO(241, 38, 197, 0.7),
    Colors.amber,
  ];

  List<String> imagesList = [
    "assets/images/food.png",
    "assets/images/fuel.png",
    "assets/images/medicine_white.png",
    "assets/images/entertainment.png",
    "assets/images/shopping.png",
    "assets/images/shopping.png",
  ];

  Map<String, double> data = {
    "Food": 20,
    "Fuel": 30,
    "Medicine": 40,
    "Entertainment": 50,
    "Shopping": 60,
    "Club": 10,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Graph",
          style: GoogleFonts.poppins(
            fontSize: 19,
            fontWeight: FontWeight.w600,
            color: const Color.fromRGBO(33, 33, 33, 1),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        child: Column(
          children: [
            PieChart(
              dataMap: data,
              animationDuration: const Duration(milliseconds: 2000),
              chartType: ChartType.ring,
              chartRadius: 177,
              ringStrokeWidth: 40,
              chartLegendSpacing: 50,
              colorList: const [
                Color.fromRGBO(214, 3, 3, 0.7),
                Color.fromRGBO(0, 148, 255, 0.7),
                Color.fromRGBO(0, 174, 91, 0.7),
                Color.fromRGBO(100, 62, 255, 0.7),
                Color.fromRGBO(241, 38, 196, 0.7),
              ],
              chartValuesOptions: const ChartValuesOptions(
                showChartValues: false,
              ),
              centerWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "₹ 2550.00",
                    style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              legendOptions: LegendOptions(
                  legendTextStyle: GoogleFonts.poppins(
                color: const Color.fromRGBO(0, 0, 0, 1),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              )),
            ),
            const SizedBox(height: 30),
            const Divider(),
            const SizedBox(height: 30),
            SizedBox(
              height: 400,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 25),
                    width: 284,
                    height: 55,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(14),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: colorsList[index],
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(imagesList[index]),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          categories[index],
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "₹ 650.00",
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 12,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Divider(),
            const SizedBox(height: 30),
            SizedBox(
              width: 270,
              child: Row(
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "₹ 2,550.00",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: const ShowMenu(),
    );
  }
}
