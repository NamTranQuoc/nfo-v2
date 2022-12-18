import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

import '../design_course/design_course_app_theme.dart';
import '../main.dart';

Widget textField(String label,
    TextEditingController controller,
    {TextInputType type = TextInputType.text,
    int maxLine = 1}) {
  return Container(
      margin: EdgeInsets.only(right: 25, left: 25, top: 10),
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: Colors.blueAccent)
      ),
      child: TextField(
        controller: controller,
        keyboardType: type,
        maxLines: maxLine,
        style: const TextStyle(
          fontFamily: 'WorkSans',
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: DesignCourseAppTheme.nearlyBlue,
        ),
        decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none,
          helperStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: HexColor('#B9BABC'),
          ),
          labelStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            letterSpacing: 0.2,
            color: HexColor('#B9BABC'),
          ),
        ),
        onEditingComplete: () {},
      ));
}

Widget selectField(String label,
    TextEditingController controller,
    List<Map<String, dynamic>> item) {
  return Container(
      margin: EdgeInsets.only(right: 25, left: 25, top: 10),
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: Colors.blueAccent)
      ),
      child: SelectFormField(
        type: SelectFormFieldType.dialog,
        enableSearch: true,
        items: item,
        controller: controller,
        style: const TextStyle(
          fontFamily: 'WorkSans',
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: DesignCourseAppTheme.nearlyBlue,
        ),
        decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none,
          helperStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: HexColor('#B9BABC'),
          ),
          labelStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            letterSpacing: 0.2,
            color: HexColor('#B9BABC'),
          ),
        ),
        onEditingComplete: () {},
      ));
}