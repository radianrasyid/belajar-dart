import 'dart:ffi';

import 'package:fazztrack_batch1/screens/confirmation_screen.dart';
import 'package:fazztrack_batch1/screens/home_screen.dart';
import 'package:fazztrack_batch1/screens/home_screen_2.dart';
import 'package:intl/intl.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  var leftOver = 120000;
  final left = NumberFormat.currency(locale: 'id', symbol: 'Rp');
  RegExp regex = RegExp(r'([.]*0+)(?!.*\d)');

  int amount = 0;
  int balanceLef = 0;
  String notes = 'test';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFCFF),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
        ),
        title: Text(
          "Transfer",
          style: GoogleFonts.nunitoSans(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        titleSpacing: 0.0,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
                margin: const EdgeInsets.only(top: 40, bottom: 25),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/img/userImage2.png'))),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 9),
                              child: Text(
                                "Radian Rasyid",
                                style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: const Color(0xFF4D4B57),
                                ),
                              ),
                            ),
                            Text(
                              "+62 813-8492-9994",
                              style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: const Color(0xFF7A7886),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 35),
            alignment: Alignment.center,
            child: Text(
              "${left.format(leftOver).toString().replaceAll(regex, '')} Available",
              style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: const Color(0xFF7C7895)),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 50),
            child: TextFormField(
              onChanged: ((e) {
                amount = int.parse(e);
              }),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                // CurrencyTextInputFormatter(
                //     locale: 'id', decimalDigits: 0, symbol: 'Rp')
              ],
              style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 42,
                  color: const Color(0xFF6379F4)),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '0.0',
                hintStyle: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 42,
                    color: const Color(0xFFB5BDCC)),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16, bottom: 40),
            child: TextField(
              onChanged: (e) {
                notes = e;
              },
              style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: const Color(0xFF3A3D42)),
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.edit_outlined),
                  hintText: 'Add some notes',
                  hintStyle: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color(0xFFA9A9A9))),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                balanceLef = leftOver - amount;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConfirmationScreen(
                            amount: amount,
                            balanceLef: balanceLef,
                            notes: notes)));
              },
              child: const Text(
                "Continue",
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6379F4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                textStyle: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.white),
                padding:
                    const EdgeInsets.symmetric(horizontal: 134, vertical: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
