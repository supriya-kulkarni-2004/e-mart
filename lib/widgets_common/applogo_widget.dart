import 'package:e_mart/consts/consts.dart';
import 'package:flutter/material.dart';

Widget applogoWidget() {
  //usn=ing velocity x here
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(const EdgeInsets.all(9))
      .rounded
      .make();
}
