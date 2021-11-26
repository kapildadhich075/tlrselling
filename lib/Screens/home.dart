import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tlr/widgets/navtext.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeWidget();
  }
}

class HomeWidget extends StatelessWidget {
  final List<String> _navList = ["Home", "Services", "Projects", "About"];
  Widget getTextWidgets() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _navList
          .map(
            (item) => NavText(
          title: item,
          onPressed: null,
        ),
      )
          .toList(),
    );
  }
  HomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width / 2,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('office.jpeg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black45,
            BlendMode.multiply,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.width / 16,
                  width: MediaQuery.of(context).size.width / 10,
                  padding: const EdgeInsets.all(12.0),
                  decoration: const BoxDecoration(
                    color: Color(0xddFF7800),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Image.asset(
                    'logo.png',
                  ),
                ),
                getTextWidgets(),
              ],
            ),
            const SizedBox(height: 100.0,),
            Text(
              "Video Editing Service for YouTube",
              style: GoogleFonts.pacifico(
                textStyle: const TextStyle(color: Colors.white,fontSize: 50.0),
              ),
            ),
            const SizedBox(height: 10.0,),
            Text(
              "Plus everything else you need for your channel.",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(color: Colors.white,fontSize: 20.0),
              ),
            ),
            const SizedBox(height: 20.0,),
            const FaIcon(FontAwesomeIcons.youtube,size: 100.0,color: Colors.red,),
            const SizedBox(height: 10.0,),
            Text(
              "For a fixed monthly subscription, our professional team will take care of all your video editing – so you can focus on the filming!",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(color: Colors.white,fontSize: 15.0),
              ),
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,

            ),
            const SizedBox(height: 20.0,),
          ],
        ),
      ),
    );
  }
}
