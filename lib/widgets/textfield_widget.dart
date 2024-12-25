import 'package:flutter/material.dart';


  InputDecoration inputDecoration( String hintText,Icon icon)
  {
    return InputDecoration(
      filled: true,
      fillColor: Color(0xFFF5F9FD),
      hintText: hintText,
      prefixIcon: icon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Color(0xFFCEDDEE),
          width: 2,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Color(0xFFCEDDEE),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Color(0xFFCEDDEE),
        ),
      ),
    );
  }


