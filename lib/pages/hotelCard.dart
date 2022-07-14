import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/main.dart';
import 'package:hotels/pages/page1.dart';
import 'package:hotels/pages/page1.dart';




class HotelCard extends StatelessWidget {
  final Map hotelData;
  HotelCard(this.hotelData);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              image: DecorationImage(
                image: AssetImage(
                  hotelData['picture'],
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(children: [
              Positioned(
                top: 5,
                right: -15,
                child: MaterialButton(
                  color: Colors.white,
                  shape: CircleBorder(),
                  onPressed: () {},
                  child: Icon(Icons.favorite_border_outlined),
                ),
              ),
            ]),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['title'],
                  style: GoogleFonts.nunito(
                      fontSize: 18, fontWeight: FontWeight.w800),
                ),
                Text(
                  '\$' + hotelData['price'].toString(),
                  style: GoogleFonts.nunito(
                      fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['place'],
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[500],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.place,
                      size: 14,
                      color: d_green,
                    ),
                    Text(
                      hotelData['distance'].toString() + 'km to city',
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[500],
                      ),
                    ),
                    Text(
                      'per night',
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  hotelData['review'].toString() + 'reviews',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
