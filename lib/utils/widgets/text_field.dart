import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Icon icon;
  bool textHide;
  CustomTextField(
      {super.key,
      required this.textHide,
      required this.controller,
      required this.hintText,
      required this.icon});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool? isHidden;
  @override
  Widget build(BuildContext context) {
    if (isHidden == null) {
      isHidden = widget.textHide;
    }
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(00.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 0),
          ),
        ]
      ),
      child: TextFormField(
        controller: widget.controller,
        obscureText: isHidden!,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: widget.icon,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
            
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
         suffixIcon: widget.textHide? IconButton(
          
          onPressed: (){
            isHidden = !isHidden!;
            setState(() {
              
            });
          }, 
          
           icon: Icon(isHidden!? Icons.visibility_off : Icons.visibility)) : null
          
        ),
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
