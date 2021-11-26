import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavText extends StatefulWidget {
  final String title;
  final onPressed;
  const NavText({Key? key, required this.title,this.onPressed}) : super(key: key);
  @override
  _NavTextState createState() => _NavTextState();
}

class _NavTextState extends State<NavText> {


  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          TextButton(
            child: Text(
              widget.title,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            onPressed: widget.onPressed,
          ),
        ]
    );
  }
}
