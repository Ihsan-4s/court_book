import 'package:court_booking/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:court_booking/pages/home_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Court Booking App",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quod. lorem Lorem ipsum dolor sit amet consectetur",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20,),
              CustomButton(textButton: "start", onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())); 
              })
            ],
          ),
        ),
      ),
    );
  }
}
