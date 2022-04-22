import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int jumlah;

  FacilityItem({
    required this.name,
    required this.imageUrl,
    required this.jumlah,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              '$jumlah ',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff5843BE),
              ),
            ),
            Text(
              name,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0xff7A7E86),
              ),
            ),
          ],
        )
      ],
    );
  }
}
