import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySplashModel {
  final String imageurl;
  final String title;
  final String description;

  MySplashModel(
      {required this.imageurl, required this.title, required this.description});

  static List<MySplashModel> splashList = [
    MySplashModel(
      imageurl: 'assets/plant-one.png',
      title: 'گیاهان را بهتر از قبل درک کن',
      description: 'درمورد نگه داری گل و گیاهان میتوانی اطلاعات کسب کنی',
    ),
    MySplashModel(
      imageurl: 'assets/plant-two.png',
      title: 'با گیاهان جدید آشنا شو',
      description: 'رز مشکی یا گل رز دوست داری؟ اینجا میتونی پیداش کنی',
    ),
    MySplashModel(
      imageurl: 'assets/plant-three.png',
      title: "با یک گل بهار نمیشود، گل بکار!",
      description: 'هرگلی نیاز داشته باشید با قیمت باورنکردنی میتونی پیدا کنی',
    ),
  ];
}

class SplashSheet extends StatelessWidget {
  const SplashSheet({
    super.key,
    required this.sizeHeight,
    required this.sizeWidth,
    required this.imageurl,
    required this.title,
    required this.description,
  });

  final double sizeHeight;
  final double sizeWidth;
  final String imageurl;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      verticalDirection: VerticalDirection.down,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.20),
          child: SizedBox(
              width: double.infinity,
              height: sizeHeight * 0.45,
              child: Image(image: AssetImage(imageurl))),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.18),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  textAlign: TextAlign.center,
                  title,
                  style: GoogleFonts.lalezar(
                      fontSize: 25, color: Theme.of(context).primaryColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  description,
                  style: GoogleFonts.notoSansCuneiform(
                      fontSize: 20, color: Theme.of(context).cardColor),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: sizeHeight * 0.08)
            ],
          ),
        ),
      ],
    );
  }
}
