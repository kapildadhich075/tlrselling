import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(30.0),
            padding: const EdgeInsets.all(30.0),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                )
            ),
            child: Row(
              children: [
                Image.asset('logo.png',height: 50,width: 50,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
