import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({
    super.key,
    required this.listColor,
    required this.listDetail,
    required this.listImage,
    required this.listName,
    required this.listPrice,
  });

  final String listImage, listName, listDetail, listPrice;
  final int listColor;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.symmetric(vertical: 20),
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(listImage))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listName,
                          style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: const Color(0xFF4D4B57)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          listDetail,
                          style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: const Color(0xFF7A7886),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      listPrice,
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Color(listColor)),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
