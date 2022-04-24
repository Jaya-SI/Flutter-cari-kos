import 'package:cari_kos/models/recomended.dart';
import 'package:cari_kos/pages/error_page.dart';
import 'package:cari_kos/widgets/facility_item.dart';
import 'package:cari_kos/widgets/ratting_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final Recomended recomendeds;

  DetailPage(this.recomendeds);

  @override
  Widget build(BuildContext context) {
    klaunchUrl(final String _url) async {
      if (await canLaunchUrl(Uri.parse(_url))) {
        await launchUrl(Uri.parse(_url));
      } else {
        Navigator.pushNamed(context, '/error-page');
      }
    }

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Stack(
          children: [
            Image.network(
              '${recomendeds.image_url}',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Color(0xffFFFFFF),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${recomendeds.name}',
                                  style: GoogleFonts.poppins(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '\$${recomendeds.price}',
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff5843BE),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      ' / month',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff7A7E86),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [1, 2, 3, 4, 5].map((index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 2),
                                  child: RattingItem(
                                    index: index,
                                    ratting: recomendeds.rating,
                                  ),
                                );
                              }).toList(),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Main Facilities',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FacilityItem(
                                    imageUrl: 'assets/images/icon_kitchen.png',
                                    jumlah: recomendeds.number_of_kitchens,
                                    name: 'kitchen'),
                                FacilityItem(
                                    imageUrl: 'assets/images/icon_badroom.png',
                                    jumlah: recomendeds.number_of_bedrooms,
                                    name: 'Badroom'),
                                FacilityItem(
                                    imageUrl: 'assets/images/icon_lemari.png',
                                    jumlah: recomendeds.number_of_cupboards,
                                    name: 'Big Lemari'),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          'Photo',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: recomendeds.photos!.map((item) {
                              return Container(
                                margin: EdgeInsets.only(left: 24),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.network(
                                    item,
                                    width: 110,
                                    height: 88,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            }).toList()),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          'Location',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${recomendeds.address} \n${recomendeds.city}',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xff7A7E86),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                klaunchUrl('${recomendeds.map_url}');
                              },
                              child: Image.asset(
                                'assets/images/btn_map.png',
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        width: MediaQuery.of(context).size.width - (2 * 24),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff5843BE),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: TextButton(
                          onPressed: () {
                            klaunchUrl('tel:${recomendeds.phone}');
                          },
                          child: Text(
                            'Book Now',
                            style: GoogleFonts.poppins(
                              color: Color(0xffFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/images/btn_wishlist.png',
                    width: 40,
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
