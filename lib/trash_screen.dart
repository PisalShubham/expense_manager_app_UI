import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'drawer.dart';

class TrashScreen extends StatefulWidget {
  const TrashScreen({super.key});

  @override
  State<TrashScreen> createState() => _TrashScreenState();
}

class _TrashScreenState extends State<TrashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trash",
          style: GoogleFonts.poppins(
            fontSize: 19,
            fontWeight: FontWeight.w600,
            color: const Color.fromRGBO(33, 33, 33, 1),
          ),
        ),
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
                //padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                //color: Colors.amber,
                width: 410,
                height: 80,
                padding: const EdgeInsets.only(bottom: 0, top: 8, left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.remove_circle,
                      color: Color.fromRGBO(204, 210, 227, 1),
                      size: 25,
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 338,
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
                              //const SizedBox(width: 230),
                              const Spacer(),
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
                        SizedBox(
                          width: 300,
                          height: 30,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more",
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                            ),
                          ),
                        ),
                        Container(
                          width: 338,
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
      drawer: const ShowMenu(),
    );
  }
}
