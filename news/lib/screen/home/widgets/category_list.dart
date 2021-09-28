import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 5),
            child: Text(
              'All',
              style: GoogleFonts.poppins(
                  color: Colors.black45, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 5),
            child: Text(
              'Information',
              style: GoogleFonts.poppins(
                  color: Colors.black45, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 5),
            child: Text(
              'Media',
              style: GoogleFonts.poppins(
                  color: Colors.black45, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 5),
            child: Text(
              'Magazine',
              style: GoogleFonts.poppins(
                  color: Colors.black45, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 5),
            child: Text(
              'Business',
              style: GoogleFonts.poppins(
                  color: Colors.black45, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
