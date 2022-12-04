import 'package:fazztrack_batch1/screens/home_screen.dart';
import 'package:fazztrack_batch1/screens/transfer_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fazztrack_batch1/widgets/vertical_list.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.white,
        // ),
        body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.symmetric(vertical: 40),
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/img/userImage.png'))),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              "Hello,",
                              style: GoogleFonts.nunitoSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF646464),
                              ),
                            ),
                          ),
                          Text(
                            "Radian Rasyid",
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: const Color(0xFF3D3D3D),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  child: Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.notifications_none_outlined,
                          color: Color(0xFF4D4B57),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF6379F4)),
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Text("Balance",
                          style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: const Color(0xFFD0D0D0),
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Text("Rp120.000",
                          style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Colors.white,
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Text("+62 813-9387-7946",
                          style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xFFDFDCDC),
                          )),
                    ),
                  ],
                )),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TransferScreen()));
                  },
                  icon: const Icon(
                    Icons.arrow_upward,
                    color: Color(0xFF608DE2),
                  ),
                  label: Text(
                    "Transfer",
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: const Color(0xFF514F5B)),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color(0xFFEAEDFF),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      elevation: 0,
                      minimumSize: const Size(162, 57)),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Color(0xFF608DE2),
                  ),
                  label: Text(
                    "Top Up",
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: const Color(0xFF514F5B)),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color(0xFFEAEDFF),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      elevation: 0,
                      minimumSize: const Size(162, 57)),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transaction History",
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: const Color(0xFF514F5B),
                  ),
                ),
                Text(
                  "See all",
                  style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color(0xFF6379F4)),
                )
              ],
            ),
          ),
          const VerticalList(
              listColor: 0xFF1EC15F,
              listDetail: "Transfer",
              listImage: "assets/img/userImage.png",
              listName: "Samuel Suhi",
              listPrice: "+Rp50.000"),
          const VerticalList(
              listColor: 0xFFFF5B37,
              listDetail: "Subscription",
              listImage: "assets/img/spotify.png",
              listName: "Spotify",
              listPrice: "-Rp49.000"),
          const VerticalList(
              listColor: 0xFFFF5B37,
              listDetail: "Subscription",
              listImage: "assets/img/netflix.png",
              listName: "Netflix",
              listPrice: "-Rp149.000"),
          const VerticalList(
              listColor: 0xFF1EC15F,
              listDetail: "Transfer",
              listImage: "assets/img/userImage2.png",
              listName: "Bobi Sammy",
              listPrice: "+Rp1.150.000"),
        ],
      ),
    ));
  }
}
