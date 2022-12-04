import 'package:fazztrack_batch1/screens/transfer_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({
    super.key,
    required this.amount,
    required this.balanceLef,
    required this.notes,
  });

  final int amount, balanceLef;
  final String notes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context) => const TransferScreen()));
          },
        ),
        title: Text(
          "Confirmation",
          style: GoogleFonts.nunitoSans(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        titleSpacing: 0.0,
        backgroundColor: const Color(0xFF6379F4),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 40, bottom: 20, left: 16, right: 16),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: const Color(0xFF6379F4),
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 23),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/img/userImage2.png')),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
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
                                  color: const Color(0xFF4D4B57)),
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
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 167,
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Amount",
                                  style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: const Color(0xFF7A7886),
                                  ),
                                ),
                              ),
                              Text(
                                NumberFormat.currency(
                                        locale: 'id', symbol: 'Rp')
                                    .format(amount),
                                style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: const Color(0xFF514F5B),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  Container(
                    width: 167,
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Balance Left",
                                  style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: const Color(0xFF7A7886),
                                  ),
                                ),
                              ),
                              Text(
                                NumberFormat.currency(
                                        locale: 'id', symbol: 'Rp')
                                    .format(balanceLef),
                                style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: const Color(0xFF514F5B),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 167,
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Date",
                                  style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: const Color(0xFF7A7886),
                                  ),
                                ),
                              ),
                              Text(
                                DateFormat('MM-dd-yyyy').format(DateTime.now()),
                                style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: const Color(0xFF514F5B),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  Container(
                    width: 167,
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Time",
                                  style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: const Color(0xFF7A7886),
                                  ),
                                ),
                              ),
                              Text(
                                DateFormat('hh:mm')
                                    .format(DateTime.now().toUtc()),
                                style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: const Color(0xFF514F5B),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, right: 16, left: 16),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Notes",
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: const Color(0xFF7A7886),
                            ),
                          ),
                        ),
                        Text(
                          notes,
                          style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: const Color(0xFF514F5B),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50, left: 16, right: 16),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Continue"),
                style: ElevatedButton.styleFrom(
                    textStyle: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    backgroundColor: const Color(0xFF6379F4),
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
