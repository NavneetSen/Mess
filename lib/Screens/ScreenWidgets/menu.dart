// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mess/widgets/DropDown.dart';

class MenuPage extends StatefulWidget {
  static const routeName = '/menu';
  MenuPage({Key? key}) : super(key: key);
  int index = 0;
  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  String? categoryValue;
  final List<String> menu = [
    'Breakfast',
    'Lunch',
    'Evening Snacks',
    'Dinner',
  ];
  final List<String> items = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Divider(color: Color.fromARGB(255, 255, 255, 255)),
          Container(
            width: 250.w,
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Select Day",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10.h,
                ),
                DropDown(
                  items: menu,
                  categoryValue: categoryValue,
                  text: "Select Day",
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Select Meal",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10.h,
                ),
                DropDown(
                  items: items,
                  categoryValue: categoryValue,
                  text: "Select Meal",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
