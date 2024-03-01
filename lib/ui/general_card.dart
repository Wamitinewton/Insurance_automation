import 'package:flutter/material.dart';

class GeneralCard extends StatelessWidget {
    final double width;
  final double height;
  final Widget child;
  GeneralCard({
      required this.width,
      required this.height,
      required this.child,
  });
  @override
  Widget build(BuildContext context) {
     return Container(        
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      child: child,    
    );
  }
}