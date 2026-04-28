import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Payment Method"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choose Payment",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "select your preferred payment method",
              style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade300,
                              radius: 30,
                              child: Icon(Icons.wallet, color: Colors.black),
                            ),
                            SizedBox(width: 20),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pay on Locations",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Cash Payment",
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "pay with cash when you arrive at location",
                          style: GoogleFonts.poppins(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade300,
                              radius: 30,
                              child: Icon(Icons.qr_code, color: Colors.black),
                            ),
                            SizedBox(width: 20),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pay with Qris",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Digital Payment",
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "scan the qr code to pay instantly with your e-wallet",
                          style: GoogleFonts.poppins(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade100,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.info),
                      SizedBox(width: 10),
                      Text(
                        "Booking Policy",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text(
                      "Your payment method cant be change after completing the order",
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
