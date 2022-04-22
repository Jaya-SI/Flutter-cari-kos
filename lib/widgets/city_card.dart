import 'package:cari_kos/models/city.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CityCard extends StatelessWidget {
  final City city;

  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: 120,
        height: 150,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: city.popular
                      ? Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xff5843BE),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/Icon_star.png',
                              height: 22,
                              width: 22,
                            ),
                          ),
                        )
                      : Container(),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              city.name,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
