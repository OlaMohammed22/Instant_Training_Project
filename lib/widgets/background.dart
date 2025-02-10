import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Background extends StatelessWidget {
  final Widget child;

  Background({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    left: 0,
                    child: SvgPicture.asset(
                      "assets/Background1.svg",
                      width: 250,
                      height: 350,
                    )),
                Positioned(
                    top: 0,
                    left: 0,
                    child: SvgPicture.asset(
                      "assets/Background1.svg",
                      width: 250,
                      height: 350,
                    )),

                Positioned(
                    bottom: 0,
                    right: 0,
                    child: SvgPicture.asset(
                      "assets/Background2.svg",
                      width: 250,
                      height: 350,
                    )),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: SvgPicture.asset(
                      "assets/Background2.svg",
                      width: 250,
                      height: 350,
                    )),
                child,

              ],
            )));
  }
}