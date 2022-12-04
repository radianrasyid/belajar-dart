import 'package:fazztrack_batch1/screens/home_screen_2.dart';
import 'package:fazztrack_batch1/screens/transfer_screen.dart';
import 'package:fazztrack_batch1/widgets/vertical_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List tampilan = [
    const VerticalList(
        listColor: 0xFF1EC15F,
        listDetail: "Transfer",
        listImage: 'assets/img/userImage.png',
        listName: "Samuel Suhi",
        listPrice: "+Rp50.000"),
    const VerticalList(
        listColor: 0xFF1EC15F,
        listDetail: "Subscription",
        listImage: 'assets/img/userImage.png',
        listName: "Spotify",
        listPrice: "-Rp49.000"),
    const VerticalList(
        listColor: 0xFF1EC15F,
        listDetail: "Subscription",
        listImage: 'assets/img/userImage.png',
        listName: "Netflix",
        listPrice: "+Rp50.000"),
    const VerticalList(
        listColor: 0xFF1EC15F,
        listDetail: "Transfer",
        listImage: 'assets/img/userImage.png',
        listName: "Bobi Sammy",
        listPrice: "+Rp1.150.000"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color(0xFF6379F4),
        ),
        body: SafeArea(
            child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Color(0xFF6379F4),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 52,
                              width: 52,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/img/userImage.png'))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Balance',
                                    style: GoogleFonts.nunitoSans(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: const Color(0xFFD0D0D0)),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Rp 120.000",
                                    style: GoogleFonts.nunitoSans(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.notifications_none_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen2()));
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
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
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
            // SizedBox(
            //   height: 349,
            //   child: ListView.builder(
            //       itemCount: tampilan.length,
            //       scrollDirection: Axis.vertical,
            //       physics: const BouncingScrollPhysics(),
            //       itemBuilder: (context, index) {
            //         return tampilan[index];
            //       }),
            // ),
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
        )));
  }
}
