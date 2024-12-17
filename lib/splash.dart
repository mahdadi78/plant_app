import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/splash_sheet.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: appbar(context),
        body: PageView.builder(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            itemCount: MySplashModel.splashList.length,
            itemBuilder: (context, index) {
              return SplashSheet(
                sizeHeight: sizeHeight,
                sizeWidth: sizeWidth,
                imageurl: MySplashModel.splashList[index].imageurl,
                title: MySplashModel.splashList[index].title,
                description: MySplashModel.splashList[index].description,
              );
            }));
  }

  AppBar appbar(context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 20),
          child: InkWell(
            onTap: () {},
            child: Text(
              'ردکردن',
              style: GoogleFonts.lalezar(
                  fontSize: 19, color: Theme.of(context).cardColor),
            ),
          ),
        )
      ],
    );
  }
}

//  TODO  i have to add isActiveButtton...

class Indicator extends StatelessWidget {
  final int number;
  const Indicator({
    super.key,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: buttonBuilder(context));
  }

  List<Widget> buttonBuilder(context) {
    List<Widget> list = [];
    for (int i = 0; i < number; i++) {
      list.add(
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor,
          ),
        ),
      );
    }
    return list;
  }
}
