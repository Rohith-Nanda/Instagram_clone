

import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/dimmensions.dart';

class Responsivelayout extends StatelessWidget {
  final Widget webscreenlayout;
  final Widget mobilescreenlayout;
  const Responsivelayout({super.key, required this.webscreenlayout, required this.mobilescreenlayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth > webscreensize){
            return webscreenlayout;
        }
        else{
          return mobilescreenlayout;
        }
      }
      );
  }
}