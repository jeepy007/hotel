// @dart=2.9
import 'package:flutter/material.dart';
import 'package:hotels/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/calendar_page.dart';
import 'package:hotels/my_Services/service.dart';
import 'package:hotels/pages/page1.dart';
import 'package:hotels/pages/searchSection.dart';

import 'hotelCard.dart';

const d_green = Color(0xFF54D3C2);
MyService _myService = MyService();
List hotelList = _myService.myMap2;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotels Booking',
      home: HomePage(),
    );
  }
}

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchSection(),
            HotelSection(),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: null,
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 20,
        ),
      ),
      title: Text(
        'Explore',
        style: GoogleFonts.nunito(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w800,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.favorite_outline_outlined,
            color: Colors.grey,
            size: 20,
          ),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.place,
            color: Colors.grey,
            size: 20,
          ),
        ),
      ],
      backgroundColor: Colors.white,
    );
  }
}

class HotelSection extends StatelessWidget {
  /*final List hotelList = [
    {
      'title': 'Grand Royal Hotel',
      'place': 'Wembley, London',
      'distance': 2,
      'review': 36,
      'picture': 'assets/images/h2.jpeg',
      'price': 180,
    },
    {
      'title': 'Grand Blue Hotel',
      'place': 'Wembley, London',
      'distance': 4,
      'review': 26,
      'picture': 'assets/images/h3.jpeg',
      'price': 150,
    },
    {
      'title': 'Queen Hotel',
      'place': 'Wembley, London',
      'distance': 2,
      'review': 56,
      'picture': 'assets/images/h4.jpeg',
      'price': 180,
    },
    {
      'title': 'King Hotel',
      'place': 'Wembley, London',
      'distance': 2,
      'review': 76,
      'picture': 'assets/images/h5.jpeg',
      'price': 180,
    },
  ];*/
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '550 hotels founds',
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Filters',
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.filter_list_off_outlined,
                    size: 25,
                  ),
                  color: d_green,
                ),
              ],
            ),
          ),
          Column(
            children: hotelList.map((hotel) {
              return HotelCard(hotel);
              //child: Text(hotel['title']),
            }).toList(),
          )
        ],
      ),
    );
  }
}
