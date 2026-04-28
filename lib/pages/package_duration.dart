import 'package:court_booking/pages/order_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PackageDuration extends StatelessWidget {
  const PackageDuration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Package Duration",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 30, vertical: 15),
        child: ListView.separated(
        itemBuilder: (context, index) {
        return InkWell(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => OrderSummary()));},
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.grey.shade300,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("1 hour", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16),),
                    Spacer(),
                    Text("Rp 150.000", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Perfect for training", style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w500
                    ),),
                    Spacer(),
                    Text("per Session", style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),),
                  ],
                )
              ],
            ),
          ),
        );
                  },
                  separatorBuilder: (context, index){
        return SizedBox(height: 15,);
                  },
                  itemCount: 4,
                ),
      ),
    );
  }
}
