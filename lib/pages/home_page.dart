import 'package:cari_kos/models/city.dart';
import 'package:cari_kos/models/recomended.dart';
import 'package:cari_kos/models/tips.dart';
import 'package:cari_kos/widgets/bottom_navbar_item.dart';
import 'package:cari_kos/widgets/city_card.dart';
import 'package:cari_kos/widgets/recomended_card.dart';
import 'package:cari_kos/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
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
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    RecomendedCard(
                      Recomended(
                          id: 1,
                          name: 'Kuretakeso Hott',
                          imageUrl: 'assets/images/space1.png',
                          price: 52,
                          city: 'Sahurai',
                          coutry: 'Batola',
                          ratting: 4),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    RecomendedCard(
                      Recomended(
                          id: 2,
                          name: 'Roemah Nenek',
                          imageUrl: 'assets/images/space2.png',
                          price: 52,
                          city: 'BCB',
                          coutry: 'Banjarbaru',
                          ratting: 5),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    RecomendedCard(Recomended(
                        id: 3,
                        name: 'Kuretakeso Hott',
                        imageUrl: 'assets/images/space3.png',
                        price: 52,
                        city: 'Bumi Mas',
                        coutry: 'Banjarmasin',
                        ratting: 3)),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                Text(
                  'Tips & Guidance',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    TipsCard(Tips(
                        id: 1,
                        title: 'City Guidlines',
                        imageUrl: 'assets/images/tips1.png',
                        update: 'Updated 20 Apr')),
                    SizedBox(
                      height: 20,
                    ),
                    TipsCard(
                      Tips(
                          id: 2,
                          title: 'Jakarta Fairship',
                          imageUrl: 'assets/images/tips2.png',
                          update: 'Updated 11 Des'),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
        floatingActionButton: Container(
          height: 65,
          width: MediaQuery.of(context).size.width - (2 * 24),
          margin: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: Color(0xffF6F7F8),
            borderRadius: BorderRadius.circular(23),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavbarItem(
                imageUrl: 'assets/images/icon_home.png',
                active: true,
              ),
              BottomNavbarItem(
                imageUrl: 'assets/images/icon_mail.png',
                active: false,
              ),
              BottomNavbarItem(
                imageUrl: 'assets/images/icon_card.png',
                active: false,
              ),
              BottomNavbarItem(
                imageUrl: 'assets/images/icon_love.png',
                active: false,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
