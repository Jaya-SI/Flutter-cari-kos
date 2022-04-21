import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore Now',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Mencari kosan yang santuy',
                style: GoogleFonts.poppins(
                  color: Color(0xff82868E),
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
