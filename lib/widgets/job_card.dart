import 'package:flutter/material.dart';
import 'package:future_job/pages/second_homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class JobCard extends StatelessWidget {
  final String text;
  final String imageUrl;

  JobCard({this.imageUrl, this.text});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SecondHomePage(
                    jobTitleHome: text,
                    imageUrl: imageUrl,
                  )),
        );
      },
      child: Container(
        width: 150,
        height: 200,
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 15.0, left: 10, bottom: 15, right: 10),
            child: Text(
              text,
              style: GoogleFonts.poppins(
                color: Color(0xffFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
