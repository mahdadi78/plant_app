import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.20),
            child: const Image(image: AssetImage('assets/plant-one.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              'گیاهان را بهتر از قبل درک کن',
              style: GoogleFonts.lalezar(
                  fontSize: 25, color: Theme.of(context).primaryColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              ' درمورد نگهداری گل و گیاه میتونی اطلاعات کسب کنی تا بتونی خریدی خوب داشته باشی',
              style: GoogleFonts.notoSansCuneiform(
                  fontSize: 20, color: Theme.of(context).cardColor),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 30),
          child: InkWell(
            onTap: () {},
            child: Text(
              'ردکردن',
              style: GoogleFonts.lalezar(fontSize: 21, color: Colors.grey),
            ),
          ),
        )
      ],
    );
  }
}
