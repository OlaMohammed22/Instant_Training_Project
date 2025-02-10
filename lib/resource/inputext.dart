import 'package:flutter/material.dart';
import 'package:untitled36/resource/color.dart';
import 'package:flutter_svg/svg.dart';


class InputTextt {
  static inputTextStyleWithSuffixIcon(iconOrSvgLink, text, Icon suffixicon) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              iconOrSvgLink,
              width: 30,
              height: 40,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "|",
              style: TextStyle(color: ColorManger.primaryGreen, fontSize: 30),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 14, color: ColorManger.grey),
            )
          ],
        ),
        suffixIcon: IconButton(
            onPressed: () {},
            icon: suffixicon,
            color: ColorManger.primaryGreen),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: ColorManger.grey,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: ColorManger.primaryGreen,
            width: 1.0,
          ),
        ),
      ),
    );
  }

  static inputTextStyleWithoutSuffixIcon(
    iconOrSvgLink,
    text,
  ) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              iconOrSvgLink,
              width: 30,
              height: 40,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "|",
              style: TextStyle(color: ColorManger.primaryGreen, fontSize: 30),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 14, color: ColorManger.grey),
            )
          ],
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: ColorManger.grey,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: ColorManger.primaryGreen,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}