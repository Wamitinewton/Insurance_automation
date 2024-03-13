import 'package:flutter/material.dart';

class CustomFlatButton extends StatefulWidget {
  final VoidCallback onTap;
  final String text;
  final Color color;
  final Color textolor;
  const CustomFlatButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.color,
      required this.textolor});

  @override
  State<CustomFlatButton> createState() => _CustomFlatButtonState();
}

class _CustomFlatButtonState extends State<CustomFlatButton> 
with SingleTickerProviderStateMixin
 {
  late double _scale;
  late AnimationController _animationController;
  @override
  void initState(){
    _animationController = AnimationController(
      
      vsync: this,
      duration: const Duration(milliseconds: 100),
        lowerBound: 0.0,
        upperBound: 0.1,

      
      )..addListener(() {
        setState(() {
          
        });
        super.initState();
      });
  }

  @override
  void dispose(){
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
