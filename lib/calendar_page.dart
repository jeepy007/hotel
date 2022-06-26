import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PeriodSection(),
            CalendarPage(),
            ValidateBookingSection(),
          ],
        ),
      ),
    );
  }
}

class CalendarRange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ValidateBookingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: (() {}),
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

class PeriodSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
