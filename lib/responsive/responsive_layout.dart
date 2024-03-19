import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class ResponsiveLayout extends StatelessWidget {
   Widget mobileScreenLayout;
  Widget webScreenLayout;
  ResponsiveLayout({ required this.mobileScreenLayout,required this.webScreenLayout,super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,Constraints){
      if (Constraints.maxWidth>900) {
        //web
          return webScreenLayout;
      }
      //mobile
      return mobileScreenLayout;

    });
  }
}