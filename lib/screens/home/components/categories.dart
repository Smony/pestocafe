import 'package:flutter/material.dart';
import 'package:pestocafe/config.dart';
import 'package:pestocafe/constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Гриль", "Пицца", "Сезонное меню", "Завтраки (до 13:00)", "Детское меню"];
  // By default first one is selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // return Padding(
      // padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize * 2),
      return SizedBox(
        height: SizeConfig.defaultSize * 3.5, // 35
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategoriItem(index),
        ),
      );
    // );
  }

  Widget buildCategoriItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: SizeConfig.defaultSize * 2),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defaultSize * 2, //20
          vertical: SizeConfig.defaultSize * 1, //5
        ),
        decoration: BoxDecoration(
            color:
            selectedIndex == index ? Color(0xFFEFF3EE) : Colors.transparent,
            borderRadius: BorderRadius.circular(
              SizeConfig.defaultSize * 1.6, // 16
            )),
        child: Text(
          categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: selectedIndex == index ? kPrimaryColor : Color(0xFF86766A),
          ),
        ),
      ),
    );
  }
}