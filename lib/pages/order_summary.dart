import 'package:court_booking/pages/payment_method.dart';
import 'package:court_booking/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Order Summary"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 30, vertical: 20),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade200,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Basket Ball Court A",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Indoor || Air Conditioned",
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                    SizedBox(height: 50),
                    Row(
                      children: [
                        Icon(Icons.calendar_month),
                        SizedBox(width: 10),
                        Text("Date", style: GoogleFonts.poppins(fontSize: 16)),
                        Spacer(),
                        Text(
                          "Today, Dec 15",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 24),
                      child: Divider(color: Colors.black, thickness: 1),
                    ),
                    Row(
                      children: [
                        Icon(Icons.hourglass_top),
                        SizedBox(width: 10),
                        Text(
                          "Duration",
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                        Spacer(),
                        Text(
                          "2 Hours",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 24),
                      child: Divider(color: Colors.black, thickness: 1),
                    ),
                    Row(
                      children: [
                        Icon(Icons.sell),
                        SizedBox(width: 10),
                        Text(
                          "Price/Hour",
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                        Spacer(),
                        Text(
                          "Rp. 50,000",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    Row(
                      children: [
                        Text(
                          "Subtotal (2 Hours)",
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                        Spacer(),
                        Text(
                          "Rp. 50,000",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          "Service Fee",
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                        Spacer(),
                        Text(
                          "Rp. 5,000",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Text(
                          "Total",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Rp. 105,000",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 30, vertical: 20),
            child: Container(
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
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35 ),
                    child: Text("This is a sample booking policy message This is a sample booking policy message This is a sample booking policy message.", style: GoogleFonts.poppins(),),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: CustomButton(textButton: "Choose Payment Method", onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => (PaymentMethod())));
            }),
          )
        ],
      ),
    );
  }
}
