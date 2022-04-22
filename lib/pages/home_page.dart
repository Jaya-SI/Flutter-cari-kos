import 'package:cari_kos/models/city.dart';
import 'package:cari_kos/widgets/city_card.dart';
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
          // NOTE: TITLE / HEADER
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
              SizedBox(
                height: 30,
              ),
              // NOTE : KOTA POPULAR
              Text(
                'Kota Populer',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CityCard(
                      City(
                          id: 1,
                          name: 'Banjarmasin',
                          imageUrl: 'assets/images/city1.png',
                          popular: false),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      City(
                        id: 1,
                        name: 'Banjarbaru',
                        imageUrl: 'assets/images/city2.png',
                        popular: true,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      City(
                        id: 1,
                        name: 'Barito Kuala',
                        imageUrl: 'assets/images/city3.png',
                        popular: false,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // NOTE RECOMENDED
              Text(
                'Recommended Kost',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
