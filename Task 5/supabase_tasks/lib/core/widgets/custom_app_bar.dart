import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_tasks/features/login/ui/helper/my_custom_clipper.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 50),
        width: double.infinity,
        height: 200,
        color: Color(0xff3ECF8E),
        child: Text(
         title ,
          style: TextStyle(
            fontSize: 30,
            fontFamily: GoogleFonts.adamina().fontFamily,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
